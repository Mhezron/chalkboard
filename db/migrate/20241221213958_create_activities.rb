class CreateActivities < ActiveRecord::Migration[7.2]
  def change
    create_table :activities do |t|
      t.string :activity_name
      t.integer :activity_code
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
