class CreateMircoposts < ActiveRecord::Migration
  def self.up
    create_table :mircoposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    add_index :mircoposts, :user_id
  end
  
  def self.down
    drop_table :mircoposts
  end
end
