class CreateRoomMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :room_messages do |t|
      t.integer :room_id
      t.integer :user_id
      t.text :message

      t.timestamps
    end
  end
end
