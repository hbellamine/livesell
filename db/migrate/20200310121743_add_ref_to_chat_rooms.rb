class AddRefToChatRooms < ActiveRecord::Migration[5.2]
  def change
    add_reference :chat_rooms, :livecast, foreign_key: true
  end
end
