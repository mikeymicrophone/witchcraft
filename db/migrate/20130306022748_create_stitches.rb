class CreateStitches < ActiveRecord::Migration
  def change
    create_table :stitches do |t|
      t.integer :scroll_id
      t.integer :scribbling_id

      t.timestamps
    end
  end
end
