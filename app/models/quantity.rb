class Quantity < ApplicationRecord
  belongs_to :product_size
  belongs_to :product_shoesize
  belongs_to :product_color
end
