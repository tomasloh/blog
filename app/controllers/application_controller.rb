class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  def initialize
	super
	@current_user = User.first
	@categories = Category.all
  end
end
