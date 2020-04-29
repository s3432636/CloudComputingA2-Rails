class UserSport < ApplicationRecord
  belongs_to :user
  belongs_to :sport
  belongs_to :skill_level
end
