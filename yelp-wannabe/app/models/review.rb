class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  scope :valid, -> {where.not(id: nil)}
end
