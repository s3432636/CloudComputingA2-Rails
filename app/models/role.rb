class Role < ApplicationRecord
  has_many :memberships
  validates :name, presence: true, length: { maximum: 25 }, uniqueness: true
end
