RedmineApp::Application.routes.draw do 
#    match 'my/avatar', :controller => 'my', :action => 'avatar', :via => [:get, :post]
#   match 'my/save_avatar/:id', :controller => 'my', :action => 'save_avatar', :id=>/\d+/, :via => [:get, :post]
#    match 'account/get_avatar/:id', :controller => 'account', :action => 'get_avatar', :id=>/\d+/, :via => [:get, :post]
#    match 'users/save_avatar/:id', :controller => 'users', :action => 'save_avatar', :id=>/\d+/, :via => [:get, :post]
#    match 'users/get_avatar/:id', :controller => 'users', :action => 'get_avatar', :id=>/\d+/, :via => [:get, :post]
    match 'account/save_avatar', :controller => 'account', :action => 'save_avatar', :via => [:get, :post]
    match 'account/get_avatars', :controller => 'account', :action => 'get_avatar', :via => [:get, :post]
end
