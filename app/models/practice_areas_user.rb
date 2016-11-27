class PracticeAreasUser < ApplicationRecord

  belongs_to :user
  belongs_to :practice_area
end
