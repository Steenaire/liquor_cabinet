class RecipeIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  def measure_unit
    return "#{self.quantity}oz" if self.ingredient.volume || self.ingredient.weight
    return "#{self.quantity.round} dash" if self.ingredient.dash && self.quantity == 1
    return "#{self.quantity.round} dashes" if self.ingredient.dash
    return "#{self.quantity.round} " if self.ingredient.count
  end

  def oz_to_ml
    return "#{(self.quantity*29.57).round}mL" if self.ingredient.volume
    return "#{(self.quantity).round} "
  end

end
