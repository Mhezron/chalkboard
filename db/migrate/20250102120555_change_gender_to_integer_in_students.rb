class ChangeGenderToIntegerInStudents < ActiveRecord::Migration[6.0]
  def change
    change_column :students, :gender, :integer, default: 0
  end
end
