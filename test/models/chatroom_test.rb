require 'test_helper'

class ChatroomTest < ActiveSupport::TestCase
  setup do
    @chatroom = Chatroom.create!(name: 'Learn Rails', category: 'programming', description: 'Ruby on Rails is lit! Join a community of passionate Rails developers and create beautiful things together')
  end

  test 'should create chatroom' do
    assert @chatroom.valid?
  end

  test 'should not create chatroom with wrong category' do
    @chatroom.category = 'porn'

    assert_not @chatroom.valid?
  end

  test 'should not create chatroom without a given name' do
    @chatroom.name = ''

    assert_not @chatroom.valid?
  end

  test 'should not create chatroom with a short name' do
    @chatroom.name = 'a' * 2

    assert_not @chatroom.valid?
  end

  test 'should not create a chatroom with a long name' do
    @chatroom.name = 'a' * 31

    assert_not @chatroom.valid?
  end

  test 'should not create a chatroom with an already existing name' do
    @chatroom_2 = Chatroom.create(name: 'Learn Rails', category: 'programming')

    assert_not @chatroom_2.valid?
  end

  test 'should not create a chatroom without a description' do
    @chatroom.description = ''

    assert_not @chatroom.valid?
  end

  test 'should not validate a chatroom with a short description' do
    @chatroom.description = 'a'

    assert_not @chatroom.valid?
  end

  test 'should not validate a chatroom with a long description' do
    @chatroom.description = 'a' * 171

    assert_not @chatroom.valid?
  end
end
