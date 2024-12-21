class CreateSubjects < ActiveRecord::Migration[7.2]
  def change
    create_table :subjects do |t|
      t.string :subject_name
      t.integer :subject_code
      t.references :teacher, null: false, foreign_key: true
      t.references :dept, null: false, foreign_key: true

      t.timestamps
    end
  end
end
