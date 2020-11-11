class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :dob
      t.integer :gender
      t.integer :role

      t.timestamps
    end
  end
end
