class StausesController < ApplicationController
  before_action :authorize_user
  private
  def authorize_user
    if !current_user.coach?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
