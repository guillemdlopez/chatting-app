module ApplicationHelper
    def get_chatrooms
        @chatrooms ||= Chatroom.all
    end

    def latest_chat
        @newest_chat ||= Chatroom.last
    end
end
