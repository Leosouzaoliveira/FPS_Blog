class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.date :release_date
      t.text :weapons
      t.text :characters
      t.text :history

      t.timestamps
    end
  end
end
