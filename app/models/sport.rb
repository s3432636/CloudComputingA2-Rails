class Sport < ApplicationRecord
  has_many :groups
  has_many :user_sports
  has_many :users, through: :user_sports
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
end
