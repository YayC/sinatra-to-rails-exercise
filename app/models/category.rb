class Category < ActiveRecord::Base
  attr_accessible :content
  has_many :articles
end
