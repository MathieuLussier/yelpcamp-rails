class CreateAddresses < ActiveRecord::Migration
  def up
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.string :zip_code

      t.timestamps
    end
  end

  def down
    drop_table :addresses
  end
end
