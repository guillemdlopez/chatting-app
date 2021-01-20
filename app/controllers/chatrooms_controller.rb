class ChatroomsController < ApplicationController
    before_action :require_user
    before_action :set_chatroom, only: [:show]

    def index
        @CATEGORIES = Chatroom::CATEGORIES
        @chatrooms = Chatroom.all
    end

    def show
        @messages = @chatroom.messages.custom_display
        @message = Message.new
        @users = User.all
    end

    def new
        @chatroom = Chatroom.new
    end

    def create
        @chatroom = Chatroom.new(chatroom_params)
    end

    private
    
    def chatroom_params
        params.require(:chatroom).permit(:name, :category, :photo)
    end

    def set_chatroom
        @chatroom = Chatroom.find(params[:id])
    end
end
