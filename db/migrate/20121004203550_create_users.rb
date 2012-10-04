class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname_1
      t.string :lastname_2
      t.date :birthdate
      t.string :picture
      t.string :phone
      t.string :email
      t.string :password
      t.integer :gender_id
      t.integer :role_id

      t.timestamps
    end
  end
end
