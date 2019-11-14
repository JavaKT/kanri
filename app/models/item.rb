class Item < ApplicationRecord

  belongs_to :user
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader

  def self.search(search)
    if search 
      Item.where('name LIKE (?)', "%#{search}%")
    else
      Item.all
    end
  end

end
