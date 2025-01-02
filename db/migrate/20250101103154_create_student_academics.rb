class CreateStudentAcademics < ActiveRecord::Migration[8.0]
  def change
    create_table :student_academics do |t|
      t.timestamps
    end
  end
end
