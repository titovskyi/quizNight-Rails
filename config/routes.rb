Rails.application.routes.draw do

  devise_for :admins

  root 'admin/games#index'
  # root 'admin/games#index'

  namespace :admin do
    resources :leagues do
    	resources :seasons do
    		resources :games
    	end
    end

    resources :games, :seasons, :leagues, :teams, :game_teams

    resources :game_teams do
      patch :update_approved, on: :member
      patch :update_team_in_game, on: :member
    end 
  end
  namespace :api do
    resources :api_game, :api_team, :api_game_teams
  end


end
