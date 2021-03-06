class Post < ApplicationRecord
	belongs_to :category, required: true
	validates :title, presence: true, length: {minimum: 2 }
	validates :category, presence: true
	validates :content, presence: true
	validates :overview, presence: true
	
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
