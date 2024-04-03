# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_03_040716) do
  create_table "filmmakers", force: :cascade do |t|
    t.string "name"
    t.string "birthday"
    t.string "nationality"
    t.integer "genre_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_filmmakers_on_genre_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.string "year"
    t.string "synopsis"
    t.string "country"
    t.string "duration"
    t.string "poster"
    t.integer "filmmaker_id", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "release_status", default: 0
    t.integer "post_status", default: 0
    t.index ["filmmaker_id"], name: "index_films_on_filmmaker_id"
    t.index ["genre_id"], name: "index_films_on_genre_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "filmmakers", "genres"
  add_foreign_key "films", "filmmakers"
  add_foreign_key "films", "genres"
end
