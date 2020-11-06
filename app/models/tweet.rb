class Tweet < ApplicationRecord
  belongs_to_active_hash :quantity
  belongs_to_active_hash :size
  belongs_to_active_hash :weather
  belongs_to_active_hash :wind

  belongs_to :user
end
