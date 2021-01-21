class PagesController < ApplicationController
  def chatrooms
    @chatrooms = Chatroom.all
  end
end
