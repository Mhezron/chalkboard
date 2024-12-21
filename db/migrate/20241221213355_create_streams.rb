class CreateStreams < ActiveRecord::Migration[7.2]
  def change
    create_table :streams do |t|
      t.string :stream_name
      t.integer :stream_code

      t.timestamps
    end
  end
end
