class RemoveStudentIdFromDorms < ActiveRecord::Migration[8.0]
  def change
    remove_column :dorms, :student_id, :integer
  end
end
