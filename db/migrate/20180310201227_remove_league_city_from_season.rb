class RemoveLeagueCityFromSeason < ActiveRecord::Migration[5.1]
  def change
    remove_column :seasons, :league_city, :integer
  end
end
