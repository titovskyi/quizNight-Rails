class CreateLeagues < ActiveRecord::Migration[5.1]
  def change
    create_table :leagues do |t|
      t.integer :name
      t.string :city

      t.timestamps
    end
  end
end
