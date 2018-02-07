class CreateRoomUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :room_users do |t|
      t.integer :room_id
      t.integer :user_id
      t.boolean :is_master, default: false

      t.timestamps
    end
  end
end
