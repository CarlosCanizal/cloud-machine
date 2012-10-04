class CreateTimedowns < ActiveRecord::Migration
  def change
    create_table :timedowns do |t|
      t.string :description
      t.integer :shift_id
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
