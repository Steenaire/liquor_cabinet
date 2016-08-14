class Ingredient < ApplicationRecord

  has_many :cabinets
  has_many :users, through: :cabinets
end
