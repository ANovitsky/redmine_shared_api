class PublicSettingsApiController < ApplicationController
  
  skip_before_filter :check_if_login_required, :check_password_change

  def index    
    respond_to do |format|      
      format.api {
        @config = Setting
      }
    end      
  end
end
