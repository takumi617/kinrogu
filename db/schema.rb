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
<<<<<<< HEAD
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2025_11_19_060913) do
=======
# It's strongly recommended that you check this file into your version control
ActiveRecord::Schema[8.1].define(version: 2025_11_12_090047) do
>>>>>>> 48a19ffb0bb0dfc2801d6d01a6ea16eeb3bc4bd2
  create_table "reviews", force: :cascade do |t|
    t.string "category"
    t.string "comment"
    t.datetime "created_at", null: false
    t.string "location"
    t.string "star"
    t.string "storename"
<<<<<<< HEAD
    t.datetime "updated_at", null: false
  end

=======

ActiveRecord::Schema[8.1].define(version: 2025_11_19_060913) do
>>>>>>> 48a19ffb0bb0dfc2801d6d01a6ea16eeb3bc4bd2
  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "password_digest"
    t.string "uid"
<<<<<<< HEAD
=======

>>>>>>> 48a19ffb0bb0dfc2801d6d01a6ea16eeb3bc4bd2
    t.datetime "updated_at", null: false
  end
end
