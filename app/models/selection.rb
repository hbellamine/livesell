class Selection < ApplicationRecord
  belongs_to :product
  belongs_to :livecast
  belongs_to :user
end
