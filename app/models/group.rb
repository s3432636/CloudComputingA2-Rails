class Group < ApplicationRecord
  belongs_to :sport
  belongs_to :approval_type
  belongs_to :group_type
  belongs_to :skill_level
  has_many :memberships
  has_many :users, through: :memberships
  
  before_save   :downcase_email
  validates :name, presence: true, length: { maximum: 100 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
  
  private
  
    # Converts email to all lower-case.
    def downcase_email
      self.email = email.downcase
    end
  
end
