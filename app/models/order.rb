class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :livecast
  monetize :amount_cents
end
