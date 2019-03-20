class CustomFieldsApiController < ApplicationController

  before_filter :require_login
  accept_api_auth :index

  def index
    respond_to do |format|      
      format.api {
        @custom_fields = CustomField.all
      }
    end
  end
end
