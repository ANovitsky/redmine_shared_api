class UsersApiController < ApplicationController

  before_filter :require_login
  accept_api_auth :index

  def index    
    respond_to do |format|      
      format.api {
        @users = User.all
      }
    end      
  end
  
  def text_formatting    
    respond_to do |format|            
        Setting.text_formatting
    end      
  end

end
