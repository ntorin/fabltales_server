class CreateConversationUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :conversation_users do |t|
      t.integer :conversation_id
      t.integer :user_id
      t.string :role
      t.integer :unread_count

      t.timestamps
    end
  end
end
