class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = ["american", "korean", "brazilian", "japanese"]
  validates :name, presence: true
  validates :category, inclusion: {in: CATEGORIES}




end
