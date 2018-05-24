class Admin::GameTeamsController < Admin::AdminController

	def index
		@game_teams = GameTeam.order(:approved).page(params[:page])
	end

	def show
		@game_team = GameTeam.find(params[:id])
	end

  def update_approved
    @game_team = GameTeam.find(params[:id])
    @game_team.update_attribute(:approved, true)
    redirect_to admin_game_teams_path
  end

  def update_team_in_game
    @game_team = GameTeam.find(params[:id])
    @game = @game_team.game_id
    @game_team.update_attribute(:approved, true)
    redirect_to admin_game_path({:id=>@game})
  end

	def new
		@game_team = GameTeam.new
	end

	def create
  	@game_team = GameTeam.new(game_team_params)
  	if @game_team.save
  		redirect_to admin_game_teams_path
  	else
  		render :new
  	end
  end

  def edit
  	@game_team = GameTeam.find(params[:id])
  end
  def update
  	@game_team = GameTeam.find(params[:id])
  	if @game_team.update_attributes(game_team_params)
  		redirect_to admin_game_teams_path
  	else
  		render :edit
  	end
  end

  def destroy
  	@game_team = GameTeam.find(params[:id])
  	@game_team.destroy
  	redirect_to admin_game_teams_path
  end

  private

  def game_team_params
  	params.require(:game_team).permit(:team_id, :game_id, :approved)
  end

end
