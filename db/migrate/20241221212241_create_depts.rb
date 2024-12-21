class CreateDepts < ActiveRecord::Migration[7.2]
  def change
    create_table :depts do |t|
      t.string :dept_name
      t.integer :dept_code
      t.references :subject, null: false, foreign_key: true
      t.references :stream, null: false, foreign_key: true
      t.timestamps
    end
  end
end
