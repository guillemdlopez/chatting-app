require 'test_helper'

class ChatroomsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = User.create(username: 'Guillem', password: 'password')
  end

  test 'should get index if user is signed in' do
    sign_in_as(@user)
    get "/"
    assert_response :success
  end

  test 'should display notice if user logs in succesfully' do
    sign_in_as(@user)

    get "/"
    assert_equal "You have successfully logged in", flash[:notice]
    assert_response :success
  end

  test 'should display alert if a not logged in user tries to navigate to the index page' do
    get "/"
    
    assert_redirected_to login_path
    assert_equal 'You must be logged in to perform that action', flash[:alert]
  end
end
