class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer  :caretaker_id	
      t.integer  :cleaner_id
      t.string   :comment
      t.float    :rate
      t.timestamps
    end
  end
end
