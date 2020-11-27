class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :quantity
  belongs_to_active_hash :size
  belongs_to_active_hash :weather
  belongs_to_active_hash :wind
  
  has_one_attached :image
  belongs_to :user
  has_many :messages

  geocoded_by :address
  before_validation :geocode

  validates :image, :type_name, :datetime, :wind, :feed, :address, :latitude, :longitude, presence: true
  validates :type_name, format: { with: /\A[ァ-ヶー－]+\z/, message: "は全角カタカナで入力してください" }
  validates :feed, format: { with: /\A[ぁ-んァ-ン一-龥]/,  message: "は全角文字で入力してください" }
  with_options numericality: { other_than: 0 , message: "を選択してください" } do
    validates :quantity_id
    validates :size_id
    validates :weather_id
  end
end
