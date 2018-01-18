class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :passage
      t.boolean :is_editing
      t.boolean :is_complete
      t.integer :like_count
      t.integer :view_count

      t.timestamps
    end
  end
end
