class Post < ActiveRecord::Base
	validates :user_id,	:presence => true
	validates :title,	:presence => true
	validates :content,	:presence => true
	
	belongs_to :user
end
