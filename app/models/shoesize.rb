class Shoesize < ApplicationRecord
    has_many :product_shoesizes
  has_many :products, through: :product_shoesizes

end
