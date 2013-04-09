class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :content
      t.integer :article_id

      t.timestamps
    end
  end
end
