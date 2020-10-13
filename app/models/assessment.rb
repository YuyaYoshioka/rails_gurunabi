class Assessment < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :address, presence: true
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :user_id, presence: true
  validates :star, presence: true
end
