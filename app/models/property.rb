class Property < ApplicationRecord
    mount_uploader :image_id, PropImageUploader

    enum status:
    {
        MoveOut: 0,
        MoveIn: 1
    }
end
