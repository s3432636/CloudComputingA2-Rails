class ApprovalType < ApplicationRecord
  has_many :groups
  validates :option, presence: true, length: { maximum: 10 }, uniqueness: true
end
