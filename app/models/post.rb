class Post < ActiveRecord::Base
	validates :user_id,	:presence => true
	validates :title,	:presence => true
	validates :content,	:presence => true
	
	belongs_to :user
	
	has_many :category_posts, :deoendent => :destroy
	has_many :categories, :through => :category_posts
end
