class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer  :cleaner_id	
      t.integer  :caretaker_id	
      t.integer  :property_id
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.integer  :price
      t.integer  :status

      t.timestamps
    end
  end
end
