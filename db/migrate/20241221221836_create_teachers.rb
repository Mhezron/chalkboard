class CreateTeachers < ActiveRecord::Migration[7.2]
  def change
    create_table :teachers do |t|
      t.string :teacher_fname
      t.string :teacher_lname
      t.integer :mobile_no
      t.string :email
      t.references :sport, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true
      t.references :dept, null: false, foreign_key: true

      t.timestamps
    end
  end
end
