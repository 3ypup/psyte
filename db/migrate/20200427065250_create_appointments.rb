class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|


	    t.text :author
	    t.text :phone
	    t.text :email

      t.timestamps
    end
  end
end
