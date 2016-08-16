class RecipeIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  def measure_unit
    return "#{self.quantity}oz" if self.ingredient.volume || self.ingredient.weight
    return "#{self.quantity.round} dash" if self.ingredient.dash
    return "#{self.quantity.round} " if self.ingredient.count
  end

  def oz_to_ml
    return "#{self.quantity*29.57}mL"
  end

end
