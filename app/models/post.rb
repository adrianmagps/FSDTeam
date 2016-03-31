class Post < ActiveRecord::Base
  has_and_belongs_to_many :tags

  has_many :comments

  belongs_to :category

  belongs_to :user, :foreign_key => :autor_id
end
