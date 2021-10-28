class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :email, null: false
      t.string :password, null: false
      t.string :image
      t.date :birthday
      t.text :description
      t.text :phone
      t.boolean :active, null: false, default: false

      t.references :address, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
