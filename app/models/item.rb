class Item < ApplicationRecord

  belongs_to :user
  belongs_to :genre
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader

end
