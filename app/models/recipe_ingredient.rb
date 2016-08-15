class RecipeIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  def measure_unit
    return "oz" if self.ingredient.volume || self.ingredient.weight
    return "" if self.ingredient.count
  end

  def measure_count
    return self.quantity.round() if self.ingredient.count
    return self.quantity
  end

end
