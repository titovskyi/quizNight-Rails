class AddLeagueCityToSeason < ActiveRecord::Migration[5.1]
  def change
    add_column :seasons, :league_city, :integer
  end
end
