class CreateGameTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :game_teams do |t|
      t.integer :team_id
      t.integer :game_id
      t.boolean :approved

      t.timestamps
    end
  end
end
