class AddLeagueIdToSeason < ActiveRecord::Migration[5.1]
  def change
    add_column :seasons, :league_id, :integer
  end
end
