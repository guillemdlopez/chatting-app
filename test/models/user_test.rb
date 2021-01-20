require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.create(username: 'Guillem', password: 'password')
  end

  test 'should be able to create a User' do
    assert @user.valid?
  end

  test 'should not be able to create a user with the same username' do
    @user2 = User.new(username: 'Guillem', password: '123456')

    assert_not @user2.valid?
  end

  test 'should not accept short username' do
    @user.username = 'G'

    assert_not @user.valid?
  end
end
