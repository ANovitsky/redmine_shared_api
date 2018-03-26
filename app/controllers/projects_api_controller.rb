class ProjectsApiController < ApplicationController

  before_filter :require_login
  accept_api_auth :index
  
  helper :custom_fields
  helper :projects
  
  def index
    scope = Project.visible.sorted
  
    respond_to do |format|      
      format.api  {
        @offset, @limit = api_offset_and_limit
        @project_count = scope.count
        @projects = scope.offset(@offset).limit(@limit).to_a
      }
    end
  end
end
