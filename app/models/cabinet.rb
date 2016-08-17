class Cabinet < ApplicationRecord
  belongs_to :user
  belongs_to :ingredient
  belongs_to :brand
end
