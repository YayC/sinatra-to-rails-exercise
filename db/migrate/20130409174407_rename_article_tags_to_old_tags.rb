class RenameArticleTagsToOldTags < ActiveRecord::Migration
  def up
  	rename_column :articles, :tags, :old_tags
  end

  def down
  	rename_column :articles, :old_tags, :tags
  end
end
