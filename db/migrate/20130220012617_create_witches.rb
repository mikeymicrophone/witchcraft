class CreateWitches < ActiveRecord::Migration
  def change
    create_table :witches do |t|
      t.string :witch_name
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
