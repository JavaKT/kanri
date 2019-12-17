class Item < ApplicationRecord

  belongs_to :user
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader

  enum category:{ "美容":1,
    "ファッション":2,
    "リビング":3,}

  def self.search(search)
    if search 
      Item.where('name LIKE (?)', "%#{search}%")
    else
      Item.all
    end
  end

end
