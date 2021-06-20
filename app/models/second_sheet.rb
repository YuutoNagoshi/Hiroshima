class SecondSheet < ApplicationRecord
    belongs_to :user
    mount_uploader :two_image, ImageUploader
end
