class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations do |t|
      t.string :name
      t.text :description
      t.boolean :is_group
      t.text :last_message
      t.integer :message_count
      t.integer :user_count

      t.timestamps
    end
  end
end
