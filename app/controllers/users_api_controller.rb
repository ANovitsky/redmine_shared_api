class UsersApiController < ApplicationController

  before_action :require_login
  accept_api_auth :index

  helper :sort
  include SortHelper
  helper :custom_fields
  include CustomFieldsHelper
  helper :principal_memberships
  
  def index   
	sort_init 'firstname', 'asc'
    sort_update %w(firstname lastname created_on)
	
	@status = params[:status] || 1

    scope = User.logged.status(@status).preload(:email_address)
    scope = scope.like(params[:name]) if params[:name].present?
    scope = scope.in_group(params[:group_id]) if params[:group_id].present?
	
	@users =  scope.order(sort_clause).limit(@limit).offset(@offset).to_a
	
    respond_to do |format|      
      format.api 
    end      
  end
  
  def text_formatting    
    respond_to do |format|            
        Setting.text_formatting
    end      
  end

end
