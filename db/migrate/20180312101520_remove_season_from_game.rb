class RemoveSeasonFromGame < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :season, :integer
  end
end
