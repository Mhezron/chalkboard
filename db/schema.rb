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

ActiveRecord::Schema[8.0].define(version: 2025_01_02_154819) do
  create_table "activities", force: :cascade do |t|
    t.string "activity_name"
    t.integer "activity_code"
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_activities_on_student_id"
  end

  create_table "depts", force: :cascade do |t|
    t.string "dept_name"
    t.integer "dept_code"
    t.integer "subject_id", null: false
    t.integer "stream_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stream_id"], name: "index_depts_on_stream_id"
    t.index ["subject_id"], name: "index_depts_on_subject_id"
  end

  create_table "dorms", force: :cascade do |t|
    t.string "dorm_name"
    t.integer "dorm_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exams", force: :cascade do |t|
    t.string "exam_name"
    t.integer "grade"
    t.integer "student_id", null: false
    t.integer "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_exams_on_student_id"
    t.index ["teacher_id"], name: "index_exams_on_teacher_id"
  end

  create_table "parents", force: :cascade do |t|
    t.string "parent_fname"
    t.string "parent_lname"
    t.integer "mobile_no"
    t.string "email"
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_parents_on_student_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "sport_name"
    t.integer "sport_code"
    t.integer "teacher_id", null: false
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_sports_on_student_id"
    t.index ["teacher_id"], name: "index_sports_on_teacher_id"
  end

  create_table "streams", force: :cascade do |t|
    t.string "stream_name"
    t.integer "stream_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_academics", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_medicals", force: :cascade do |t|
    t.string "allergies"
    t.string "blood_Group"
    t.string "medical_condition"
    t.integer "emergency_contact"
    t.string "emergency_person"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id", null: false
    t.index ["student_id"], name: "index_student_medicals_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "student_fname"
    t.string "student_lname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dorm_id", null: false
    t.date "date_of_birth"
    t.string "admission_no"
    t.boolean "is_active"
    t.date "date_of_admission"
    t.string "student_sname"
    t.integer "gender", default: 0
    t.integer "stream_id"
    t.index ["dorm_id"], name: "index_students_on_dorm_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "subject_name"
    t.integer "subject_code"
    t.integer "teacher_id", null: false
    t.integer "dept_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dept_id"], name: "index_subjects_on_dept_id"
    t.index ["teacher_id"], name: "index_subjects_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "teacher_fname"
    t.string "teacher_lname"
    t.integer "mobile_no"
    t.string "email"
    t.integer "sport_id", null: false
    t.integer "student_id", null: false
    t.integer "subject_id", null: false
    t.integer "activity_id", null: false
    t.integer "dept_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_teachers_on_activity_id"
    t.index ["dept_id"], name: "index_teachers_on_dept_id"
    t.index ["sport_id"], name: "index_teachers_on_sport_id"
    t.index ["student_id"], name: "index_teachers_on_student_id"
    t.index ["subject_id"], name: "index_teachers_on_subject_id"
  end

  add_foreign_key "activities", "students"
  add_foreign_key "depts", "streams"
  add_foreign_key "depts", "subjects"
  add_foreign_key "exams", "students"
  add_foreign_key "exams", "teachers"
  add_foreign_key "parents", "students"
  add_foreign_key "sports", "students"
  add_foreign_key "sports", "teachers"
  add_foreign_key "student_medicals", "students"
  add_foreign_key "students", "dorms"
  add_foreign_key "subjects", "depts"
  add_foreign_key "subjects", "teachers"
  add_foreign_key "teachers", "activities"
  add_foreign_key "teachers", "depts"
  add_foreign_key "teachers", "sports"
  add_foreign_key "teachers", "students"
  add_foreign_key "teachers", "subjects"
end
