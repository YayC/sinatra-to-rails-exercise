class AddCategoryIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :category_id, :integer
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
