class SearchesController < ApplicationController
  before_action :authorize_user
  def new
    @search = Search.new
    @years = Year.where('active = true').collect { |y| [y.year, y.id]}
    @levels = Level.all.collect { |l| [l.name, l.id]}
    @funnels = Funnel.all.collect { |f| [f.name, f.id]}
    @positions = Position.all.collect { |p| [p.name, p.id]}
    @recruit_name = Recruit.all.collect { |r| [r.name, r.id]}
    @status_options = Status.where('id between 1 and 2').collect { |s| [s.status, s.id]}
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
