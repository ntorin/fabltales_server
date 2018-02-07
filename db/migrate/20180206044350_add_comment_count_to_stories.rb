class AddCommentCountToStories < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :comment_count, :integer
  end
end
