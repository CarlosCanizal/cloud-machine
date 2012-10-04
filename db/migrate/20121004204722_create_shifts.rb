class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.datetime :start
      t.datetime :end
      t.integer :machine_id
      t.integer :product_id

      t.timestamps
    end
  end
end
