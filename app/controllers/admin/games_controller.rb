class Admin::GamesController < Admin::AdminController
  def index
  	@search = Game.search(params[:q])
    @games = @search.result.page(params[:page])
  end

  def show
  	@game = Game.find(params[:id])
    @game_teams = @game.game_teams.order(:approved).page(params[:page])
  end

  def new
    @season = Season.find(params[:season_id])
    @league = League.find(@season.league_id)
  	@game = Game.new
    @last_game = Game.where(season_id: @season.id).order(:game).last
  end

  def create
    @season = Season.find(params[:season_id])
    @league = League.find(params[:league_id])
  	@game = Game.new
    @game.assign_attributes(game_params)
    @game.league = @league
    @game.season = @season
  	if @game.save
  		redirect_to admin_season_path({:id=>@season})
  	else
  		render :new
  	end
  end

  def edit
  	@game = Game.find(params[:id])
  end
  def update
    @season = Season.find(params[:game][:season_id])
  	@game = Game.find(params[:id])
  	if @game.update_attributes(game_params)
  		redirect_to admin_season_path({:id=>@season})
  	else
  		render :edit
  	end
  end

  def destroy
  	@game = Game.find(params[:league_id] || params[:id])
    @season = Season.find(@game.season_id)
  	@game.destroy
  	redirect_to admin_season_path({:id => @season})
  end

  private

  def game_params
  	params.require(:game).permit(:game, :season_id, :league_id, :data, :location, :adress, :project)
  end

end
