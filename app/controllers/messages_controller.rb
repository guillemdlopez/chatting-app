class MessagesController < ApplicationController
  before_action :require_user
  before_action :set_chatroom, only: [:create]

  def create
    # @message = current_user.messages.build(message_params)
    @message = Message.new(message_params)
    @message.user = current_user
    @message.chatroom = @chatroom
    
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
          render_to_string(partial: "message", locals: { message: @message })
    )
    else
      flash.now[:alert] = 'Message must not be empty'
      render 'chatrooms/index'
    end
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:chatroom_id])
  end

  def message_params
    params.require(:message).permit(:body)
  end
end
