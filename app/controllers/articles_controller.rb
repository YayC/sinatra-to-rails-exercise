class ArticlesController < ActionController::Base
	def show
		@category = Category.find_by_content(params[:category_name])
		@article = Article.find_by_title_and_category_id(params[:title],@category.id)
	end

	def old_url
		created_at = Time.new(params[:year].to_i, params[:month].to_i, params[:day].to_i)
		article = Article.find_by_title_and_created_at(params[:title], created_at)
		category = article.category
		article_title = article.title.gsub(" ", "%20")
		redirect_to "/categories/#{category.content}/articles/#{article_title}"
	end
end