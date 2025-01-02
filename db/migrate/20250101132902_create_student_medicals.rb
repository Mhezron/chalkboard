class CreateStudentMedicals < ActiveRecord::Migration[8.0]
  def change
    create_table :student_medicals do |t|
      t.string :allergies
      t.string :blood_Group
      t.string :medical_condition
      t.integer :emergency_contact
      t.string :emergency_person

      t.timestamps
    end
  end
end
