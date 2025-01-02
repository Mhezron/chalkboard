class AddColumnsToStudents < ActiveRecord::Migration[8.0]
  def change
    add_column :students, :is_active, :boolean
    add_column :students, :date_of_admission, :date
    add_column :students, :student_sname, :string
  end
end
