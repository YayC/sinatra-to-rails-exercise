class RenameArticleCategoryColumn < ActiveRecord::Migration
  def up
  	rename_column :articles, :category, :old_category
  end

  def down
  	rename_column :articles, :old_category, :category
  end
end
