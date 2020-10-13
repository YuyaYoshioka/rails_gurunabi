class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :savings, dependent: :destroy
  has_many :assessments, dependent: :destroy
  validates :username, presence: true, length: { maximum: 50 }
end
