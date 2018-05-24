class Admin::LeaguesController < Admin::AdminController
  def index
  	@leagues = League.all.order(:city).order(:name)
  end

  def show
  	@league = League.find(params[:id])
    @seasons = @league.seasons.order(name: :desc)
  end

  def new
  	@league = League.new
  end

  def create
  	@league = League.new(league_params)
  	if @league.save
  		redirect_to admin_leagues_path
  	else
  		render :new
  	end
  end

  def edit
  	@league = League.find(params[:id])
  end
  def update
  	@league = League.find(params[:id])
  	if @league.update_attributes(league_params)
  		redirect_to admin_leagues_path
  	else
  		render :edit
  	end
  end

  def destroy
  	@league = League.find(params[:id])
  	@league.destroy
  	redirect_to admin_leagues_path
  end

  private

  def league_params
  	params.require(:league).permit(:name, :city)
  end

end
