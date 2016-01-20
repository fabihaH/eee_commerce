class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :comments, :attachments_attributes
  has_many :comments, as: :commentable
  has_many :attachments, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :attachments
  has_and_belongs_to_many :tags
  
  define_index do
    indexes name
  end
end
