class CreateFacilityUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :facility_users do |t|
      t.integer :user_id
      t.integer :facility_id

      t.timestamps
    end
  end
end
