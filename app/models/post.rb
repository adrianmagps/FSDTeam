class Post < ActiveRecord::Base
  has_many :categories
  has_many :tags
  belongs_to :post
  belongs_to :user
end
