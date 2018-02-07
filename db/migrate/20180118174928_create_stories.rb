class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :passage
      t.boolean :is_editing
      t.boolean :is_complete
      t.integer :like_count, default: 0
      t.integer :view_count, default: 0

      t.timestamps
    end
  end
end
