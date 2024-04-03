class CreateFilms < ActiveRecord::Migration[7.1]
  def change
    create_table :films do |t|
      t.string :title
      t.string :year
      t.string :synopsis
      t.string :country
      t.string :duration
      t.string :poster
      t.references :filmmaker, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
