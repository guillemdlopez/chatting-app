class AddChatroomIdToMessages < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :chatroom, foreign_key: true
  end
end
