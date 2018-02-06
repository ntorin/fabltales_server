class CreateRoomVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :room_votes do |t|
      t.integer :user_id
      t.integer :room_id
      t.integer :room_user_id
      t.string :vote_type
      t.boolean :has_agreed

      t.timestamps
    end
  end
end
