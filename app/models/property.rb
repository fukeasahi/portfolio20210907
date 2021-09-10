class Property < ApplicationRecord
    mount_uploader :image_id, PropImageUploader
    mount_uploader :dirt_image_id, DirtImageUploader
    
    enum status:
    {
        MoveOut: 0,
        MoveIn: 1
    }
end
