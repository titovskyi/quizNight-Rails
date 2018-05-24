class ChangeDefaultForGameTeamsApproved < ActiveRecord::Migration[5.1]
  def change
  	change_column :game_teams, :approved, :boolean, :default => false
  end
end
