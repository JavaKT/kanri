class Item < ApplicationRecord

  belongs_to :user
  has_many :comments
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader

  enum category:{ "美容":1,
    "ファッション":2,
    "リビング":3,}

  validates :name,presence: true,format: {with: /\A[ぁ-んァ-ン一-龥a-zA-Z0-9０-９]/}
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

  def self.create_item_by(item_params)
      return false if item_params[:image].nil?
      Item.transaction do 
        item_params[:image].each do |photo|
          new_item = Item.new(image: photo)
          return false unless new_item.save!
        end
      end
    
      true
    end


end