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

ActiveRecord::Schema.define(version: 2020_03_29_211055) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_pokemons", id: false, force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "pokemon_id", null: false
    t.index ["category_id"], name: "index_categories_pokemons_on_category_id"
    t.index ["pokemon_id"], name: "index_categories_pokemons_on_pokemon_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.integer "evolution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evolution_id"], name: "index_pokemons_on_evolution_id"
  end

end
