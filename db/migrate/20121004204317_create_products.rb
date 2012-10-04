class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :sku
      t.string :picture
      t.integer :price
      t.integer :size_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
