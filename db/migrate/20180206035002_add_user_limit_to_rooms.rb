class AddUserLimitToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :user_limit, :integer
  end
end
