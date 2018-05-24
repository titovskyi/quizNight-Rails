class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :captain
      t.string :email
      t.string :phone
      t.integer :league_id

      t.timestamps
    end
  end
end
