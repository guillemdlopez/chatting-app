require 'test_helper'

class CreateMessageTest < ActionDispatch::IntegrationTest
  def setup
    @user = User.create(username: 'Guillem', password: '1234')
    @message = Message.create(body: 'Hello this is my message')
  end
 
  # test 'can create a message' do
  #   sign_in_as(@user)
  #   get root_path
  #   assert_response :redirect

  #   assert_difference('Message.count') do
  #     post message_path, params: { message: { body: 'This is my message' } }
  #   end
  #   assert_redirect_to root_path
  #   follow_redirect!
  #   assert_response :success
  # end
end
