class CreateDorms < ActiveRecord::Migration[7.2]
  def change
    create_table :dorms do |t|
      t.string :dorm_name
      t.integer :dorm_code
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
