class CreateParents < ActiveRecord::Migration[7.2]
  def change
    create_table :parents do |t|
      t.string :parent_fname
      t.string :parent_lname
      t.integer :mobile_no
      t.string :email
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
