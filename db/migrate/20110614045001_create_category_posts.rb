class CreateCategoryPosts < ActiveRecord::Migration
  def self.up
    create_table :category_posts do |t|
      t.integer :post_id
      t.integer :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :category_posts
  end
end
