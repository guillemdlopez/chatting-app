require 'test_helper'

class MessageTest < ActiveSupport::TestCase

  def setup
    @message = Message.create(body: 'Hello World!', user_id: User.first.id)
  end

  test 'should be able to create messages' do
    assert @message.valid?
  end

  test 'body of the message should be present' do
    @message.body = ''

    assert_not @message.valid?
  end

  test 'should belong to a user' do
    @message.user = nil

    assert_not @message.valid?
  end
end
