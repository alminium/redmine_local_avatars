require 'application_controller'
require_dependency 'principal' 
require_dependency 'user' 

module LocalAvatarsPlugin
  module UsersAvatarPatch
    def self.included(base) # :nodoc:    
      base.class_eval do      
        unloadable
        acts_as_attachable
        has_many :memberships, :class_name => 'Member', :foreign_key => 'user_id', :include => [ :project, :roles ], :conditions => "#{Project.table_name}.status=#{Project::STATUS_ACTIVE}", :order => "#{Project.table_name}.name"
        has_many :projects, :through => :memberships
        has_many :attachments, { :as => :container,
                                 :order => "#{Attachment.table_name}.created_on",
                                 :dependent => :destroy}
        # deleting attachments requires the attachment to belong to a project
        belongs_to :project

        def attachments_deletable?(usr)
          usr == User.current || User.current.admin?   
        end

      end
    end
  end
end

User.send(:include, LocalAvatarsPlugin::UsersAvatarPatch)

