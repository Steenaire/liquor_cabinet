class RecipeIngredient < ApplicationRecord
  belongs_to :ingredient, optional: true
  belongs_to :recipe, optional: true, :dependent => :delete
  belongs_to :brand, optional: true

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
