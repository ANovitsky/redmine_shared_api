class WorkflowTransitionsApiController < ApplicationController

  before_action :require_login
  accept_api_auth :index

  def index
    find_trackers_roles_and_statuses_for_edit
    if @roles && @trackers
      @workflow = WorkflowTransition.where(:tracker_id => @trackers, :role_id => @roles)
    end
  end

  private

  def find_trackers_roles_and_statuses_for_edit
    find_roles
    find_trackers
  end

  def find_roles
    ids = Array.wrap(params[:role_id])
    if ids == ['all']
      @roles = Role.sorted.to_a
    elsif ids.present?
      @roles = Role.where(:id => ids).to_a
    end
    @roles = nil if @roles.blank?
  end

  def find_trackers
    ids = Array.wrap(params[:tracker_id])
    if ids == ['all']
      @trackers = Tracker.sorted.to_a
    elsif ids.present?
      @trackers = Tracker.where(:id => ids).to_a
    end
    @trackers = nil if @trackers.blank?
  end

end
