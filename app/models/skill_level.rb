class SkillLevel < ApplicationRecord
  has_many :groups
  has_many :user_sports
  validates :name, presence: true, length: { maximum: 20 }, uniqueness: true
end
