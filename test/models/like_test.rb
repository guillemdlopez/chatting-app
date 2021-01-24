require 'test_helper'

class LikeTest < ActiveSupport::TestCase
  setup do
    @message = Message.create!(user_id: User.first.id, chatroom_id: Chatroom.first.id, body: 'Hola chicos, soy nuevo! :)')
  end
end
