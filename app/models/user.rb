class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :addresses, as: :addressable
  has_many :practice_areas
  has_many :practice_areas_users
  has_many :practice_locales_users
  has_many :practice_locales, through: :practice_locales_users
end
