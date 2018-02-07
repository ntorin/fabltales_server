class AddIsTypingIsTurnToRoomUser < ActiveRecord::Migration[5.0]
  def change
    add_column :room_users, :is_typing, :boolean, default: false
    add_column :room_users, :is_turn, :boolean, default: false
  end
end
