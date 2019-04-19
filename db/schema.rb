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

ActiveRecord::Schema.define(version: 20190419150014) do

  create_table "attendances", force: :cascade do |t|
    t.string   "attendable_type"
    t.integer  "attendable_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["attendable_type", "attendable_id"], name: "index_attendances_on_attendable_type_and_attendable_id"
    t.index ["user_id"], name: "index_attendances_on_user_id"
  end

  create_table "category_countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_events", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_genders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_joblevels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_jobs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_jobtypes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "title",            limit: 50, default: ""
    t.text     "comment"
    t.string   "commentable_type"
    t.integer  "commentable_id"
    t.integer  "user_id"
    t.string   "role",                        default: "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "discussion_id"
    t.text     "content"
    t.integer  "practicalneed_id"
    t.index ["commentable_id"], name: "index_comments_on_commentable_id"
    t.index ["commentable_type"], name: "index_comments_on_commentable_type"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "discussions", force: :cascade do |t|
    t.string   "topic"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "slug"
    t.string   "image"
    t.text     "description"
    t.index ["slug"], name: "index_discussions_on_slug", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "category_event_id"
    t.text     "description"
    t.text     "address"
    t.string   "city"
    t.string   "postcode"
    t.string   "link"
    t.string   "image"
    t.integer  "category_country_id"
    t.string   "linkmap"
    t.string   "slug"
    t.integer  "user_id"
    t.boolean  "approve"
    t.boolean  "close"
    t.string   "image_url"
    t.index ["slug"], name: "index_events_on_slug", unique: true
  end

  create_table "forms", force: :cascade do |t|
    t.string   "title"
    t.string   "fileattachment"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.text     "description"
    t.string   "image"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "slug"
    t.index ["slug"], name: "index_galleries_on_slug", unique: true
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.string   "location"
    t.text     "description"
    t.boolean  "close"
    t.boolean  "approve"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "user_id"
    t.integer  "category_job_id"
    t.integer  "category_joblevel_id"
    t.integer  "category_jobtype_id"
    t.string   "address"
    t.boolean  "churchjob"
    t.string   "slug"
    t.index ["slug"], name: "index_jobs_on_slug", unique: true
  end

  create_table "launchministries", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "mobile"
    t.string   "homenumber"
    t.string   "worknumber"
    t.string   "address"
    t.string   "city"
    t.string   "postcode"
    t.text     "mininstryidea"
    t.text     "mininstrydescription"
    t.text     "ministryneed"
    t.text     "ministrymission"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "slug"
    t.boolean  "approve"
    t.integer  "user_id"
    t.index ["slug"], name: "index_launchministries_on_slug", unique: true
  end

  create_table "photos", force: :cascade do |t|
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "gallery_id"
    t.text     "description"
    t.string   "slug"
    t.string   "name"
    t.index ["slug"], name: "index_photos_on_slug", unique: true
  end

  create_table "practicalneeds", force: :cascade do |t|
    t.string   "title"
    t.string   "location"
    t.text     "description"
    t.boolean  "close"
    t.boolean  "approve"
    t.integer  "user_id"
    t.integer  "category_job_id"
    t.integer  "category_jobtype_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "slug"
    t.index ["slug"], name: "index_practicalneeds_on_slug", unique: true
  end

  create_table "recommendedreadings", force: :cascade do |t|
    t.string   "fileattachment"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "notes"
    t.string   "filename"
    t.string   "link"
  end

  create_table "sitemanagments", force: :cascade do |t|
    t.string   "homepg_img01"
    t.string   "homepg_img02"
    t.string   "homepg_img03"
    t.string   "homepg_video"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "eventlink_img01"
    t.string   "eventlink_img02"
    t.string   "eventlink_img03"
    t.string   "videotitle"
    t.string   "livestreaming"
  end

  create_table "smallgroups", force: :cascade do |t|
    t.string   "name"
    t.text     "descriptin"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
    t.string   "address"
    t.string   "postcode"
    t.index ["slug"], name: "index_smallgroups_on_slug", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.boolean  "admin"
    t.string   "slug"
    t.boolean  "approve"
    t.string   "job"
    t.integer  "category_gender_id"
    t.string   "image"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_users_on_slug", unique: true
  end

end
