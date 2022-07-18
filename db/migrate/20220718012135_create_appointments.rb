class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :street_address
      t.string :city
      t.integer :zip_code

      t.timestamps
    end
  end
end
