class AddDescriptionToChatroom < ActiveRecord::Migration[6.0]
  def change
    add_column :chatrooms, :description, :text
  end
end
