class Comment < ActiveRecord::Base
  belongs_to :post

  has_many :reply, :class_name => 'Comment', :foreign_key => 'reply_to_id'
  belongs_to :reply_to, :class_name => 'Comment'
end
