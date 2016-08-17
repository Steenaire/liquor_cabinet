class Brand < ApplicationRecord
  has_many :cabinets
  has_many :ingredients, through: :cabinets
end
