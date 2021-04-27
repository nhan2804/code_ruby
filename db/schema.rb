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

ActiveRecord::Schema.define(version: 2021_04_25_023354) do

  create_table "account_course", primary_key: "ID", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "id_user", null: false
    t.integer "id_course", null: false
    t.integer "coin", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "accounts", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "displayname", null: false
    t.string "user", null: false
    t.string "password", null: false
    t.integer "status", null: false
    t.integer "accessright", null: false
    t.integer "coin", null: false
    t.string "phone", null: false
    t.string "email", limit: 100, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string "avatar"
    t.string "sign"
    t.integer "descript"
    t.text "cover_img"
    t.string "provider"
    t.string "provider_id"
  end

  create_table "blog", primary_key: "id_blog", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.text "title_blog", null: false
    t.text "content_blog", null: false
    t.string "img_blog", null: false
    t.integer "cate_parent", null: false
    t.float "rate_blog", limit: 53, null: false
    t.integer "view_blog", null: false
    t.string "auth", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string "tag_blog"
    t.integer "stt_blog"
  end

  create_table "blog_cate", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", null: false
    t.integer "sort", null: false
    t.integer "type", null: false
    t.integer "parent_id", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string "color_cate"
  end

  create_table "blogs", charset: "utf8mb4", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cate_documents", charset: "utf8mb4", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cmt", primary_key: "id_cmt", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "content_cmt", null: false
    t.integer "id_blog", null: false
    t.integer "id_forum", null: false
    t.integer "id_auth", null: false
    t.integer "id_parent", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer "num_cmt"
  end

  create_table "course", primary_key: "id_course", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "title_course", null: false
    t.text "desc_course", null: false
    t.string "img_course", null: false
    t.integer "cate_parent", null: false
    t.float "rate_course", limit: 53, null: false
    t.integer "total_study", null: false
    t.integer "total_lesson", null: false
    t.integer "coin", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "course_cate", primary_key: "id_cate", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "courses", charset: "utf8mb4", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "document", primary_key: "id_doc", id: :integer, charset: "utf8mb4", force: :cascade do |t|
    t.string "name_doc", null: false
    t.integer "id_cate", null: false
    t.text "desc_doc", null: false
    t.string "file_doc", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "document_cate", primary_key: "id_cate", id: :integer, charset: "utf8mb4", force: :cascade do |t|
    t.string "name_cate", null: false
    t.integer "id_parent", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "documents", charset: "utf8mb4", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "failed_jobs", id: { type: :bigint, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.text "connection", null: false
    t.text "queue", null: false
    t.text "payload", size: :long, null: false
    t.text "exception", size: :long, null: false
    t.timestamp "failed_at", default: -> { "current_timestamp()" }, null: false
  end

  create_table "forum", primary_key: "id_post", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "title_post", null: false
    t.text "content_post", size: :long, null: false
    t.integer "auth_post", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string "slug_forum"
    t.integer "like_post"
    t.string "bgcolor"
    t.integer "views"
    t.integer "comments"
    t.integer "id_cate_forum"
  end

  create_table "forum_cate", primary_key: "id_cate", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name_cate", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string "color_cate"
    t.string "img_cate"
  end

  create_table "forums", charset: "utf8mb4", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lesson", primary_key: "id_lesson", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "title_lesson", null: false
    t.string "url_lesson", null: false
    t.integer "course_parent", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer "num_lesson"
  end

  create_table "migrations", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "migration", null: false
    t.integer "batch", null: false
  end

  create_table "notify", primary_key: "id_notify", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "content_notify", null: false
    t.integer "id_send", null: false
    t.integer "id_blog", null: false
    t.integer "id_forum", null: false
    t.integer "id_cmt", null: false
    t.integer "id_rec", null: false
    t.integer "type_notify", null: false
    t.integer "status_notify", null: false
    t.string "link_notify", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "rate", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "id_course", null: false
    t.integer "id_auth", null: false
    t.integer "star_rate", null: false
    t.string "comment", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "react", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "id_post", null: false
    t.integer "id_cmt", null: false
    t.integer "id_auth_cmt", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "users", id: { type: :bigint, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.timestamp "email_verified_at"
    t.string "password", null: false
    t.string "remember_token", limit: 100
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.index ["email"], name: "users_email_unique", unique: true
  end

end
