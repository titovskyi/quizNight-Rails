class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :league
      t.integer :game
      t.integer :season
      t.timestamp :data
      t.string :location
      t.string :adress

      t.timestamps
    end
  end
end
