require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @message = Message.create(body: 'Hello this is my message')
    @user = User.create(username: 'Guillem', password: 'password')
  end
end
