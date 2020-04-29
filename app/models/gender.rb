class Gender < ApplicationRecord
  has_many :users
  validates :identity, presence: true, length: { maximum: 20 }, uniqueness: true
end
