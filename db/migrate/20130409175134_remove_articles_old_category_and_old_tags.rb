class RemoveArticlesOldCategoryAndOldTags < ActiveRecord::Migration
  def up
  	remove_column :articles, :old_category
  	remove_column :articles, :old_tags
  end

  def down
  	add_column :articles, :old_category, :string
  	add_column :articles, :old_tags, :string
  end
end
