class SettingsApiController < ApplicationController
  
  before_filter :require_login
  accept_api_auth :index
  
  def index    
    respond_to do |format|      
      format.api {
        @config = Setting
      }
    end      
  end
end
