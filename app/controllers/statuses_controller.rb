class StatusesController < ApplicationController
  before_action :authorize_user
  def index
    @statuses = Status.all
  end

  private
  def authorize_user
    if !current_user.coach?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
