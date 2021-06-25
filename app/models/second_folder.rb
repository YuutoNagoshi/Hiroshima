class SecondFolder < ApplicationRecord
    mount_uploader :two_image, ImageUploader

    has_many :two_images, dependent: :destroy
    accepts_nested_attributes_for :two_images
end
