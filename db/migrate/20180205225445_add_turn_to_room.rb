class AddTurnToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :turn, :integer
  end
end
