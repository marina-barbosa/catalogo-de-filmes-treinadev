class CreateFilmmakers < ActiveRecord::Migration[7.1]
  def change
    create_table :filmmakers do |t|
      t.string :name
      t.string :birthday
      t.string :nationality
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
