class MessagesController < ApplicationController
  before_action :require_user

  def create
    @message = current_user.messages.build(message_params)
    # @message = Message.new(message_params)
    # @message.user = current_user

    if @message.save
      ChatroomChannel.broadcast_to(
        '/',
          render_to_string(partial: "message", locals: { message: @message })
    )
    else
      flash.now[:alert] = 'Message must not be empty'
      render 'chatrooms/index'
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
