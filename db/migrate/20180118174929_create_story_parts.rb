class CreateStoryParts < ActiveRecord::Migration[5.0]
  def change
    create_table :story_parts do |t|
      t.integer :user_id
      t.integer :story_id
      t.text :part

      t.timestamps
    end
  end
end
