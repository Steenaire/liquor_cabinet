class Recipe < ApplicationRecord

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  belongs_to :user

  def self.search(search)
    where("lower(name) LIKE ?", "%#{search.downcase}%") 
  end

end
