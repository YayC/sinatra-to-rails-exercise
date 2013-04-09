class CategoriesController < ActionController::Base

	def index
		category = Category.find_by_content(params[:name])
		@articles = category.articles
	end
end