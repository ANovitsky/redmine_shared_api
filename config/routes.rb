# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
  match 'shared/projects', :controller => 'projects_api', :action => 'index', :via => [:get]
  match 'shared/custom_fields', :controller => 'custom_fields_api', :action => 'index', :via => [:get]
  match 'shared/users', :controller => 'users_api', :action => 'index', :via => [:get]
  match 'shared/settings', :controller => 'settings_api', :action => 'index', :via => [:get]
  match 'public/settings', :controller => 'public_settings_api', :action => 'index', :via => [:get]
  match 'shared/workflow/transitions', :controller => 'workflow_transitions_api', :action => 'index', :via => [:get]
  match 'shared/workflow/permissions', :controller => 'workflow_permissions_api', :action => 'index', :via => [:get]