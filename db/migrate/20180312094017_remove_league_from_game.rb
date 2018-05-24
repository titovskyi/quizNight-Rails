class RemoveLeagueFromGame < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :league, :integer
  end
end
