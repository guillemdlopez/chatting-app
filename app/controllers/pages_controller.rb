class PagesController < ApplicationController
  def chatrooms
    @chatrooms = Chatroom.all
    @CATEGORIES = Chatroom::CATEGORIES

    @chatrooms = Chatroom.all
  end
end
