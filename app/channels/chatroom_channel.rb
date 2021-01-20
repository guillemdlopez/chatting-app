class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_for '/'
    # chatroom_channel
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
