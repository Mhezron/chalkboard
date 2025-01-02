class AddColumnsToStudentMedicals < ActiveRecord::Migration[8.0]
  def change
    add_reference :student_medicals, :student, null: false, foreign_key: true
  end
end
