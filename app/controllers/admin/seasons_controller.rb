class Admin::SeasonsController < Admin::AdminController
  def index
    # if params[:season] and params[:season][:league_id]
      # @seasons = Season.search(params[:season][:league_id]).order(:name)
    # else 
      @seasons = Season.all
    # end
  end

  def show
  	@season = Season.find(params[:id])
    @league = League.find(@season.league_id)
    @games = @season.games.order(game: :desc)
  end

  def new
    @league = League.find(params[:league_id])
    @season = Season.new
    @last_season = Season.where(league_id: @league.id).order(name: :desc).first
  end

  def create 
    p params
    @league = League.find(params[:season][:league_id])
  	@season = Season.new
    @season.assign_attributes(season_params)
    @season.league = @league
  	if @season.save
  		redirect_to admin_league_path({:id=>@league})
  	else
  		render :new
  	end
  end

  def edit
    @league = League.find(params[:id])
  	@season = Season.find(params[:league_id])
  end
  def update
    @league = League.find(params[:league_id])
    @season = Season.find(params[:id])

  	if @season.update_attributes(season_params)
  		redirect_to @league
  	else
  		render :edit
  	end
  end

  def destroy
    # @league = League.find(params[:id])
  	@season = Season.find(params[:league_id])
  	@season.destroy
  	redirect_to admin_league_path
  end

  private

  def season_params
  	params.require(:season).permit(:name, :league_id)
  end

end
