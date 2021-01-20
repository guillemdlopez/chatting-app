require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @user = User.create(username: 'Guillem', password: '123456')
  end

  test 'should get log in' do
    get login_path
    assert_response :success
  end

  test 'should not get log in if already logged in' do
    sign_in_as(@user)

    get root_path
    assert_response :redirect
  end

  test 'should be able to log out' do
    sign_in_as(@user)

    delete logout_path(@user), params: { session: { user_id: @user.id }}

    assert_redirected_to login_path
  end

  test 'should display an alert if credentials are wrong' do
    post login_path(@user), params: { session: { username: 'Guillem', password: '' }}
    
    assert_equal "There was something wrong with your login credentials", flash[:alert]
  end
end
