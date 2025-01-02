class AddColumnToStudents < ActiveRecord::Migration[8.0]
  def change
    add_column :students, :stream_id, :integer
  end
end
