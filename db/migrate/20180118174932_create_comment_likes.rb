class CreateCommentLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :comment_likes do |t|
      t.integer :comment_id
      t.integer :user_id
      t.boolean :is_like

      t.timestamps
    end
  end
end
