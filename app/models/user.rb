class User < ApplicationRecord
  has_secure_password

  has_many :cabinets
  has_many :ingredients, through: :cabinets

  has_many :recipes
  
end
