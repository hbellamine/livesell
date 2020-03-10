class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @message.chat_room = @chat_room
    @message.user = current_user
    @message.save

    # if @message.save
    #   respond_to do |format|
    #     format.html { redirect_to livecast_path(@chat_room.id) }
    #     format.js
    #   end
    # else
    #   respond_to do |format|
    #     format.html { render "chat_rooms/show" }
    #     format.js
    #   end
    # end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
