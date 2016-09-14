class RecipeIngredient < ApplicationRecord
  belongs_to :ingredient, optional: true
  belongs_to :recipe, optional: true, :dependent => :delete
  belongs_to :brand, optional: true

  def measure_unit(unit)
    return "#{self.quantity}#{unit}" if self.measurement == "volume (oz)" || self.measurement == "mass (oz)"
    return "#{self.quantity.round} dash" if self.measurement == "dash" && self.quantity == 1
    return "#{self.quantity.round} dashes" if self.measurement == "dash"
    return "#{self.quantity.round} " if self.measurement == "count"
  end

  def oz_to_ml
    return (self.quantity*29.57).round if self.measurement == "volume (oz)"
    return (self.quantity).round
  end

end
