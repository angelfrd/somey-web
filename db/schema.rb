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

ActiveRecord::Schema.define(version: 20231017000242) do

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "street"
    t.string "external_number"
    t.string "internal_number"
    t.string "avenue"
    t.string "zip_code"
    t.string "city"
    t.string "locality"
    t.string "crossing"
    t.bigint "state_id"
    t.string "addressable_type"
    t.bigint "addressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
    t.index ["state_id"], name: "index_addresses_on_state_id"
  end

  create_table "countries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "image"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "machineries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "image"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "machinery_category_id"
    t.text "technical_description"
    t.string "link"
    t.string "image1"
    t.string "image2"
    t.string "image3"
    t.string "image4"
    t.string "image5"
    t.bigint "subcategory_id"
    t.string "capacity_start"
    t.string "capacity_end"
    t.string "unit"
    t.string "name_en"
    t.text "description_en"
    t.text "technical_description_en"
    t.index ["machinery_category_id"], name: "index_machineries_on_machinery_category_id"
    t.index ["subcategory_id"], name: "index_machineries_on_subcategory_id"
  end

  create_table "machinery_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "image"
    t.string "name_en"
    t.text "description_en"
  end

  create_table "machinery_documents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name_document"
    t.string "document"
    t.bigint "machinery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machinery_id"], name: "index_machinery_documents_on_machinery_id"
  end

  create_table "machinery_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "file_name"
    t.bigint "machinery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machinery_id"], name: "index_machinery_images_on_machinery_id"
  end

  create_table "permissions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions_users", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "permission_id"
    t.index ["permission_id"], name: "index_permissions_users_on_permission_id"
    t.index ["user_id"], name: "index_permissions_users_on_user_id"
  end

  create_table "states", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.bigint "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "iso"
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "subcategories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "subcategory_image"
    t.text "description"
    t.bigint "machinery_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name_en"
    t.text "description_en"
    t.index ["machinery_category_id"], name: "index_subcategories_on_machinery_category_id"
  end

  create_table "type_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email"
    t.text "password"
    t.text "password_digest"
    t.string "name"
    t.string "last_name"
    t.string "last_mother_name"
    t.string "phone"
    t.string "image_profile"
    t.boolean "deleted", default: false
    t.bigint "type_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_user_id"], name: "index_users_on_type_user_id"
  end

  add_foreign_key "addresses", "states"
  add_foreign_key "machineries", "machinery_categories"
  add_foreign_key "machineries", "subcategories"
  add_foreign_key "machinery_documents", "machineries"
  add_foreign_key "machinery_images", "machineries"
  add_foreign_key "permissions_users", "permissions"
  add_foreign_key "permissions_users", "users"
  add_foreign_key "states", "countries"
  add_foreign_key "subcategories", "machinery_categories"
  add_foreign_key "users", "type_users"
end
