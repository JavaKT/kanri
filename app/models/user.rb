class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum department:{"ファッション部":1,
             "レディースインナー部":2,
             "リビング部":3,
             "テレビ部":4,
             "ロジスティック部":5,
             "ハートコール部":6,
             "美容健康部":7,
            }

  has_many :items

  validates :username, presence: true,format: {with: /\A[ぁ-んァ-ン一-龥]/}
  validates :department,presence: {message:"を選択して下さい"}

end
