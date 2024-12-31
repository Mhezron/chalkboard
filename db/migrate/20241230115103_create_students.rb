class CreateStudents < ActiveRecord::Migration[8.0]
  def change
    create_table :students do |t|
      t.string :student_fname
      t.string :student_lname

      t.timestamps
    end
  end
end
