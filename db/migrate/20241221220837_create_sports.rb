class CreateSports < ActiveRecord::Migration[7.2]
  def change
    create_table :sports do |t|
      t.string :sport_name
      t.integer :sport_code
      t.references :teacher, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
