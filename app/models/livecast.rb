class Livecast < ApplicationRecord
  belongs_to :user
  belongs_to :store
  has_one :chat_room, dependent: :destroy
  has_one_attached :picture
  has_many :orders, dependent: :destroy
  enum state: [:pending, :confirmed]
  enum mode: [:pub, :priv]
end
