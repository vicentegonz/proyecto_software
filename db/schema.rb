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

ActiveRecord::Schema.define(version: 2020_05_19_184029) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "adminpack"
  enable_extension "plpgsql"

  create_table "comentarios", force: :cascade do |t|
    t.integer "rid"
    t.date "fecha"
    t.string "hora"
    t.integer "uid"
    t.string "contenido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comunas", force: :cascade do |t|
    t.integer "cid"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "restaurant_id"
    t.index ["restaurant_id"], name: "index_comunas_on_restaurant_id"
  end

  create_table "gustos", force: :cascade do |t|
    t.integer "uid"
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.string "usuario1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "usuario2"
    t.integer "rid"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "nombre"
    t.float "valoracion"
    t.string "comentarios"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cid"
    t.integer "uid"
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
    t.string "comuna"
    t.integer "edad"
    t.string "descripcion"
    t.binary "foto"
    t.bigint "comentario_id"
    t.bigint "gusto_id"
    t.index ["comentario_id"], name: "index_users_on_comentario_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["gusto_id"], name: "index_users_on_gusto_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "comunas", "restaurants"
  add_foreign_key "users", "comentarios"
  add_foreign_key "users", "gustos"
end
