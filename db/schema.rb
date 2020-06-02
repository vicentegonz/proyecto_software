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

ActiveRecord::Schema.define(version: 2020_06_02_210537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "adminpack"
  enable_extension "plpgsql"

  create_table "Meetings_Users", id: false, force: :cascade do |t|
    t.bigint "User_id", null: false
    t.bigint "Meeting_id", null: false
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "comentarios", force: :cascade do |t|
    t.date "fecha"
    t.string "hora"
    t.string "contenido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "restaurant_id"
    t.index ["restaurant_id"], name: "index_comentarios_on_restaurant_id"
    t.index ["user_id"], name: "index_comentarios_on_user_id"
  end

  create_table "comunas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gustos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_gustos_on_user_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "usuario1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "usuario2"
    t.integer "check"
    t.integer "restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "nombre"
    t.float "valoracion"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "comuna_id"
    t.integer "dueno_id"
    t.bigint "user_id"
    t.string "comentar"
    t.index ["comuna_id"], name: "index_restaurants_on_comuna_id"
    t.index ["user_id"], name: "index_restaurants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.string "tipo"
    t.string "sexo"
    t.string "nombre"
    t.string "apellidos"
    t.string "contacto"
    t.integer "edad"
    t.string "descripcion"
    t.binary "foto"
    t.bigint "comuna_id"
    t.index ["comuna_id"], name: "index_users_on_comuna_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "comentarios", "restaurants"
  add_foreign_key "comentarios", "users"
  add_foreign_key "gustos", "users"
  add_foreign_key "restaurants", "comunas"
  add_foreign_key "restaurants", "users"
  add_foreign_key "users", "comunas"
end
