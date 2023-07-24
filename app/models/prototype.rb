class Prototype < ApplicationRecord
  belongs_to :user # アソシエーション
  has_one_attached :image # imageカラムとアソシエーション

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
end
