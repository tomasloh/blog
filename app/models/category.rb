class Category < ActiveRecord::Base
	has_many :category_posts
	has_many :posts, :through => :category_posts
end
