class Book < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :reviews
  validates :title, presence: true, length: { maximum: 255 }
  validates :author, presence: true, length: { maximum: 255 }
  validates :description, presence: true

  has_attached_file :book_img, styles: { book_index: "250x350>", book_show: "100x100>" }, 
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :book_img, content_type: /\Aimage\/.*\z/
end
