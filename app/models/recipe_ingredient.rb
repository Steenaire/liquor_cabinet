class RecipeIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe
  belongs_to :brand

  def measure_unit(unit)
    return "#{self.quantity}#{unit}" if self.volume || self.weight
    return "#{self.quantity.round} dash" if self.dash && self.quantity == 1
    return "#{self.quantity.round} dashes" if self.dash
    return "#{self.quantity.round} " if self.count
  end

  def oz_to_ml
    return (self.quantity*29.57).round if self.volume
    return (self.quantity).round
  end

end
