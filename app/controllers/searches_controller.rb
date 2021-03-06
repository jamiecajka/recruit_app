class SearchesController < ApplicationController
  before_action :authorize_user
  def new
    @search = Search.new
    @years = Year.where("status not like ?", '%inactive%').collect { |y| [y.year, y.id]}
    @levels = Level.all.collect { |l| [l.name, l.id]}
    @funnels = Funnel.all.collect { |f| [f.name, f.id]}
    @positions = Position.all.collect { |p| [p.name, p.id]}
    @status_options = Status.where('id between 1 and 2').collect { |s| [s.status, s.id]}
    @recruits = Recruit.where('status_id = 1').collect { |r| [r.full_name, r.id]}
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
    @searchResults= @search.search_recruits
  end


  private
  def search_params
    params.require(:search).permit(:year_id, :level_id, :funnel_id, :position_id, :name, :status_id)
  end

  def authorize_user
    if !current_user.coach?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
