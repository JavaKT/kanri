class Item < ApplicationRecord

  belongs_to :user
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader

  enum category:{ "美容":1,
    "ファッション":2,
    "リビング":3,}

  validates :name,presence: true,format: {with: /\A[ぁ-んァ-ン一-龥a-zA-Z]/}
  validates :price,:budget,presence: true,format:{with: /\A[0-9]+\z/}
  validates :on_air,presence: true
  validates :category,presence: {message: "を選択して下さい"}


  def self.search(search)
    if search 
      Item.where('name LIKE (?)', "%#{search}%")
    else
      Item.all
    end
  end


end