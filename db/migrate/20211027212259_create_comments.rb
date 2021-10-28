class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.text :text, null: false
      t.references :user, null: false, index: true, foreign_key: true
      t.references :campground, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :comments
  end
end
