class AddPromptToStory < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :prompt, :text
  end
end
