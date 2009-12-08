class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |table|
      table.string :title, :default => ""
      table.text :body
      table.belongs_to :user
      table.timestamps
    end

    add_index :posts
  end

  def self.down
    remove_index :posts
    drop_table :posts
  end
end
