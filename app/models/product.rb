class Product < ApplicationRecord
  belongs_to :store
  has_many :product_sizes
  has_many :sizes, through: :product_sizes
  has_many_attached :pictures

end
