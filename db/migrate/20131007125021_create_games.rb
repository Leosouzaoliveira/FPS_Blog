class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.date :release_date
      t.string :character

      t.timestamps
    end
  end
end
