class CreateStoryUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :story_users do |t|
      t.integer :story_id
      t.integer :user_id

      t.timestamps
    end
  end
end
