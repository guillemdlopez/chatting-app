class ChatroomsController < ApplicationController
    before_action :require_user
    before_action :set_chatroom, only: [:show]

    def index
        @CATEGORIES = Chatroom::CATEGORIES
        @chatrooms = Chatroom.all
        @chatroom = Chatroom.new
    end

    def show
        @chatrooms = Chatroom.all.sample(5)
        @messages = @chatroom.messages.custom_display
        @message = Message.new
        @users = User.all
    end

    def new
        @chatroom = Chatroom.new
    end

    def create
        @chatroom = Chatroom.new(chatroom_params)

        if @chatroom.save
            flash[:notice] = "You created the chatroom #{@chatroom.name} succesfully. Start chatting with people! Remember: Do not give away any private information such as bank credentials, address or anything private"

            redirect_to chatroom_path(@chatroom)
        else
            render :index
        end
    end

    private
    
    def chatroom_params
        params.require(:chatroom).permit(:name, :description, :category, :photo)
    end

    def set_chatroom
        @chatroom = Chatroom.find(params[:id])
    end
end
