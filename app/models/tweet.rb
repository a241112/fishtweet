class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :quantity
  belongs_to_active_hash :size
  belongs_to_active_hash :weather
  belongs_to_active_hash :wind
  
  has_many_attached :image
  belongs_to :user

  validates :image, :type_name, :date, :wind, :feed, :address, presence: true
end
