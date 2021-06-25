class ThirdSheet < ApplicationRecord
    belongs_to :user
    mount_uploader :three_image, ImageUploader
end
