class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :user_id
      t.integer :story_id
      t.string :name
      t.boolean :has_password
      t.string :password
      t.integer :word_limit
      t.integer :user_count

      t.timestamps
    end
  end
end
