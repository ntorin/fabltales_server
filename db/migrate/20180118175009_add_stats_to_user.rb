class AddStatsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :identifier, :string
    add_index :users, :identifier, unique: true
    add_column :users, :role, :string, default: 'user'
    add_column :users, :bio, :string

    add_column :users, :level, :integer, default: 1
    add_column :users, :experience, :integer, default: 0
    add_column :users, :credits, :integer, default: 0

    add_column :users, :referral_count, :integer, default: 0
    add_column :users, :friend_count, :integer, default: 0
    add_column :users, :story_count, :integer, default: 0
    add_column :users, :word_count, :integer, default: 0
    add_column :users, :comment_count, :integer, default: 0
    add_column :users, :story_view_count, :integer, default: 0
    add_column :users, :profile_view_count, :integer, default: 0

    add_column :users, :accepted_tos, :boolean, default: false
    add_column :users, :verified, :boolean, default: false
    add_column :users, :is_banned, :boolean, default: false
  end
end
