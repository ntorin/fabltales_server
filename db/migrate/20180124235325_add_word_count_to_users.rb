class AddWordCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :word_count, :integer, default: 0
  end
end
