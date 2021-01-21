class AddDefaultToStatus < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :status, 'offline'
  end
end
