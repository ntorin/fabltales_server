class CreateShopItems < ActiveRecord::Migration[5.0]
  def change
    create_table :shop_items do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
