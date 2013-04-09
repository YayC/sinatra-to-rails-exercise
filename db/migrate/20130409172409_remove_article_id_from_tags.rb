class RemoveArticleIdFromTags < ActiveRecord::Migration
  def up
  	remove_column :tags, :article_id
  end

  def down
  	add_column :tags, :article_id, :integer
  end
end
