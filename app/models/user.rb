class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true
  validates :username, uniqueness: true

  has_many :cabinets
  has_many :ingredients, through: :cabinets

  has_many :recipes
  has_many :timeline_drinks
  has_many :ratings

  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
  
end
