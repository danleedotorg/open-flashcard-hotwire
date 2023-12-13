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

ActiveRecord::Schema[7.1].define(version: 2023_11_29_052738) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "multiple_choice_answers", force: :cascade do |t|
    t.text "answer", null: false
    t.text "explanation"
    t.boolean "correct", null: false
    t.bigint "multiple_choice_question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["multiple_choice_question_id"], name: "index_multiple_choice_answers_on_multiple_choice_question_id"
  end

  create_table "multiple_choice_questions", force: :cascade do |t|
    t.text "prompt", null: false
    t.bigint "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_multiple_choice_questions_on_subject_id"
  end

  create_table "single_choice_questions", force: :cascade do |t|
    t.text "prompt", null: false
    t.text "answer", null: false
    t.bigint "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_single_choice_questions_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.text "name", null: false
    t.bigint "creator_id", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_subjects_on_creator_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "multiple_choice_answers", "multiple_choice_questions"
  add_foreign_key "multiple_choice_questions", "subjects"
  add_foreign_key "single_choice_questions", "subjects"
  add_foreign_key "subjects", "users", column: "creator_id"
end
