class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # RADEMEの内容を記載 email, passはいらない
  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true

  has_many :prototypes #アソシエーション
  has_many :comments
end
