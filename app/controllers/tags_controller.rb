class TagsController < ActionController::Base

	def index
		tag = Tag.find_by_content(params[:name])
		@articles = tag.articles
	end
end