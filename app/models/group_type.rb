class GroupType < ApplicationRecord
  has_many :groups
  validates :option, presence: true, length: { maximum: 20 }, uniqueness: true
end
