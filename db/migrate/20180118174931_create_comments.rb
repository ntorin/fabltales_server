class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :story_id
      t.integer :user_id
      t.boolean :is_author
      t.text :message
      t.integer :like_count
      t.integer :dislike_count

      t.timestamps
    end
  end
end
