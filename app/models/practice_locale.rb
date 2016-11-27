class PracticeLocale < ApplicationRecord

  has_many :addresses, as: :addressable
  has_many :practice_locales_users
  has_many :users, through: :practice_locales_users
end
