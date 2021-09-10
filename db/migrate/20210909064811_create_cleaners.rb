class CreateCleaners < ActiveRecord::Migration[5.2]
  def change
    create_table :cleaners do |t|
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at
      
      
      t.string   :name
      t.integer  :age
      t.integer  :gender
      t.integer  :delete_flag
      t.string   :prefecture
      t.string   :city
      t.string   :address_number
      t.string   :building
      t.string   :license
      t.string   :pr
      t.integer  :account_number
      t.integer  :bank_code
      t.string   :branch_name
      t.integer  :branch_code
      t.integer  :account_type
      
      
      t.timestamps
    end
  end
end
















