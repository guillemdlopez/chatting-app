class LikesController < ApplicationController
    before_action :find_message

    def create
        @message.likes.create(user_id: current_user.id, chatroom_id: @message.chatroom.id)

        @message.save
        redirect_to @message.chatroom
    end

    private
    
    def find_message
        @message = Message.find(params[:message_id])

    end
end
