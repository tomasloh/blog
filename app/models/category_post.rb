class CategoryPost < ActiveRecord::Base
	belongs_to :post
	belongs_to :category
	
	after_create  :posts_counter_plus
	after_destroy :posts_counter_minus
	
	private
	
	def posts_counter_plus
		Caterogy.find(self.category_id).update_attribute(:posts_counter, category.posts_counter + 1)
	end
	
	def posts_counter_minus
		Caterogy.find(self.category_id).update_attribute(:posts_counter, category.posts_counter - 1)
	end
end
