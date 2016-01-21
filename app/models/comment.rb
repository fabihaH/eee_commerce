class Comment < ActiveRecord::Base
  attr_accessible :comment
  belongs_to :commentable
  belongs_to :user
end
