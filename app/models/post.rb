class Post < ActiveRecord::Base
  has_many :categories
  belongs_to :post
  belongs_to :user
end
