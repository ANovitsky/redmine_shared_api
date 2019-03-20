Redmine::Plugin.register :redmine_shared_api do
  name 'Redmine Shared API'
  author 'Ahau Software'
  description 'This is a plugin share API for Redmine Outlook Add-In, QuickBooks, etc..' 
  version '0.0.9'
  url 'https://github.com/anovitsky/redmine_shared_api'
  author_url 'https://www.ahausoftware.com'
  requires_redmine :version_or_higher => '2.4.0'
  requires_redmine :version => '2.1'..'3.4'
end
