class CreateScribblings < ActiveRecord::Migration
  def change
    create_table :scribblings do |t|
      t.text :body
      t.integer :witch_id

      t.timestamps
    end
  end
end
