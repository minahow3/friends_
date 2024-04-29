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

ActiveRecord::Schema[7.0].define(version: 2024_04_29_112303) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "face_part_positions", force: :cascade do |t|
    t.bigint "face_part_set_id", null: false
    t.string "face_part", null: false
    t.integer "x_position"
    t.integer "y_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["face_part_set_id"], name: "index_face_part_positions_on_face_part_set_id"
  end

  create_table "face_part_sets", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.string "contour", null: false
    t.string "eyes", null: false
    t.string "nose", null: false
    t.string "mouth", null: false
    t.string "cheeks", null: false
    t.string "eyebrows", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_face_part_sets_on_person_id"
  end

  create_table "face_parts", force: :cascade do |t|
    t.string "name"
    t.string "part_type"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "face_part_positions", "face_part_sets"
  add_foreign_key "face_part_sets", "people"
end
