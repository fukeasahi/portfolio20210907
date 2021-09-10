class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string  :post_code,       null: false
      t.string  :image_id
      t.string  :dirt_image_id
      t.float   :size
      t.integer :status
      t.string  :prefecture,      null: false
      t.string  :city,            null: false
      t.string  :address_number,  null: false
      t.string  :building
      t.timestamps
    end
  end
end
