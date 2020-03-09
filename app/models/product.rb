class Product < ApplicationRecord
  belongs_to :store
  has_many :product_sizes
  has_many :product_colors
  has_many :product_shoesizes
  has_many :shoesizes, through: :product_shoesizes
  has_many :colors, through: :product_colors
  has_many :sizes, through: :product_sizes
  has_many_attached :pictures
end
