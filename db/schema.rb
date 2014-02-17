# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< Updated upstream
ActiveRecord::Schema.define(version: 20140213032954) do
=======
ActiveRecord::Schema.define(version: 20130929001319) do
>>>>>>> Stashed changes

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "creator_id"
    t.integer  "country_of_citizenship_id"
  end

  create_table "audiophiles", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "alias"
    t.string   "hometown"
    t.string   "phone"
    t.integer  "current_genre_of_choice_id"
    t.string   "email",                      default: "", null: false
    t.string   "encrypted_password",         default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",              default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "audiophiles", ["confirmation_token"], name: "index_audiophiles_on_confirmation_token", unique: true, using: :btree
  add_index "audiophiles", ["email"], name: "index_audiophiles_on_email", unique: true, using: :btree
  add_index "audiophiles", ["reset_password_token"], name: "index_audiophiles_on_reset_password_token", unique: true, using: :btree

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "descriptions", force: true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "creator_id"
  end

  create_table "genre_descriptions", force: true do |t|
    t.integer  "genre_id"
    t.integer  "description_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "creator_id"
  end

  add_index "genre_descriptions", ["description_id"], name: "index_genre_descriptions_on_description_id", using: :btree
  add_index "genre_descriptions", ["genre_id"], name: "index_genre_descriptions_on_genre_id", using: :btree

  create_table "genrelizations", force: true do |t|
    t.integer  "song_id"
    t.integer  "genre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "creator_id"
  end

  create_table "genres", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "creator_id"
  end

  create_table "ratings", force: true do |t|
    t.integer  "score"
    t.string   "subject_type"
    t.integer  "subject_id"
    t.integer  "creator_id"
    t.boolean  "current"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< Updated upstream
  create_table "remixers", force: true do |t|
    t.integer  "song_id"
    t.integer  "artist_id"
    t.integer  "creator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

=======
>>>>>>> Stashed changes
  create_table "songs", force: true do |t|
    t.string   "title"
    t.integer  "artist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "creator_id"
    t.string   "mix_name"
  end

  create_table "sub_genres", force: true do |t|
    t.integer  "parent_genre_id"
    t.integer  "child_genre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "creator_id"
  end

  add_index "sub_genres", ["child_genre_id"], name: "index_sub_genres_on_child_genre_id", using: :btree
  add_index "sub_genres", ["parent_genre_id"], name: "index_sub_genres_on_parent_genre_id", using: :btree

end
