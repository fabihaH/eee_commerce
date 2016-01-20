class Attachment < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :attachable, polymorphic:true
  attr_accessible :photo
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
