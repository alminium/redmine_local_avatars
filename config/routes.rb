RedmineApp::Application.routes.draw do 
    match 'account/save_avatar', :to => 'account#save_avatar'
    match 'avatar/get_avatars', :to => 'avatar#get_avatar'
end
