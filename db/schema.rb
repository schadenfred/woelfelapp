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

ActiveRecord::Schema.define(version: 20161128041148) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "addresses", force: :cascade do |t|
    t.string   "line_1"
    t.string   "line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "addressable_id"
    t.string   "addressable_type"
  end

  create_table "bloggable_articles", force: :cascade do |t|
    t.string   "title"
    t.string   "slug"
    t.text     "text"
    t.integer  "author_id"
    t.integer  "bloggable_id"
    t.string   "bloggable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "aasm_state"
    t.index ["bloggable_id", "bloggable_type"], name: "bloggable", using: :btree
    t.index ["slug"], name: "index_bloggable_articles_on_slug", using: :btree
    t.index ["title"], name: "index_bloggable_articles_on_title", using: :btree
  end

  create_table "bloggable_comments", force: :cascade do |t|
    t.integer  "article_id"
    t.text     "text"
    t.integer  "commenter_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["article_id", "commenter_id"], name: "index_bloggable_comments_on_article_id_and_commenter_id", using: :btree
  end

  create_table "buttafly_mappings", force: :cascade do |t|
    t.integer  "originable_id"
    t.string   "originable_type"
    t.string   "targetable_model"
    t.text     "legend"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["originable_id", "originable_type"], name: "index_buttafly_mappings_on_originable_id_and_originable_type", using: :btree
  end

  create_table "buttafly_spreadsheets", force: :cascade do |t|
    t.json     "data"
    t.string   "name"
    t.string   "flat_file"
    t.integer  "user_id"
    t.datetime "imported_at"
    t.datetime "processed_at"
    t.string   "aasm_state"
    t.integer  "source_row_count"
    t.integer  "mtime"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["aasm_state"], name: "index_buttafly_spreadsheets_on_aasm_state", using: :btree
    t.index ["imported_at"], name: "index_buttafly_spreadsheets_on_imported_at", using: :btree
    t.index ["name"], name: "index_buttafly_spreadsheets_on_name", using: :btree
    t.index ["processed_at"], name: "index_buttafly_spreadsheets_on_processed_at", using: :btree
    t.index ["user_id"], name: "index_buttafly_spreadsheets_on_user_id", using: :btree
  end

  create_table "galleriable_galleries", force: :cascade do |t|
    t.string   "name"
    t.string   "galleriable_type"
    t.integer  "galleriable_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["galleriable_type", "galleriable_id"], name: "by_galleriable", using: :btree
  end

  create_table "galleriable_photos", force: :cascade do |t|
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "name"
    t.string   "caption"
    t.integer  "photographer_id"
    t.string   "photographable_type"
    t.integer  "photographable_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["photographable_type", "photographable_id"], name: "by_photographable", using: :btree
  end

  create_table "galleriable_slides", force: :cascade do |t|
    t.integer  "photo_id"
    t.integer  "gallery_id"
    t.hstore   "properties"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id", "gallery_id"], name: "index_galleriable_slides_on_photo_id_and_gallery_id", using: :btree
  end

  create_table "optimizable_optimizations", force: :cascade do |t|
    t.string   "optimizable_type"
    t.integer  "optimizable_id"
    t.string   "name"
    t.string   "content"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["optimizable_type", "optimizable_id"], name: "by_optimizable", using: :btree
  end

  create_table "practice_areas", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "practice_areas_users", force: :cascade do |t|
    t.integer  "practice_area_id"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "practice_locales", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "address_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "practice_locales_users", force: :cascade do |t|
    t.integer  "practice_locale_id"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
