class CreateCampgrounds < ActiveRecord::Migration
  def up
    create_table :campgrounds do |t|
      t.string :name, null: false
      t.text :description
      t.string :image
      t.float :price

      t.references :user, null: false, index: true, foreign_key: true
      t.references :address, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :campgrounds
  end
end
