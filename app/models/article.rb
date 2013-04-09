class Article < ActiveRecord::Base
  attr_accessible :category, :description, :tags, :title, :url

  belongs_to :category

  has_and_belongs_to_many :tags

  validates :description, :title, :category_id, :created_at, presence: true
end
