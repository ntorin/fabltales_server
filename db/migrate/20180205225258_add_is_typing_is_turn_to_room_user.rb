class AddIsTypingIsTurnToRoomUser < ActiveRecord::Migration[5.0]
  def change
    add_column :room_users, :is_typing, :boolean
    add_column :room_users, :is_turn, :boolean
  end
end
