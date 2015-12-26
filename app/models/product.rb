class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :comments
  has_many :comments, as: :commentable
end
