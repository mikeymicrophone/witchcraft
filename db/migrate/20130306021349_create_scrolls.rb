class CreateScrolls < ActiveRecord::Migration
  def change
    create_table :scrolls do |t|
      t.text :title

      t.timestamps
    end
  end
end
