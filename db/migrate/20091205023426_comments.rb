class Comments < ActiveRecord::Migration
  def self.up
    create_table :comments do |table|
      table.text :body
      table.string :user_name, :default => ""
      table.integer :post_id
      table.timestamps
    end
    
    add_index :comments, :id
  end

  def self.down
    remove_index :comments, :id
    drop_table :comments
  end
end
