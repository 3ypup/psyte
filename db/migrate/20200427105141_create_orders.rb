class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|


    	t.text :author
    	t.text :a_email
    	t.text :a_phone


      t.timestamps
    end
  end
end
