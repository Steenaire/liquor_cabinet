class TimelineDrink < ApplicationRecord

  paginates_per 3

  belongs_to :user
  belongs_to :recipe
end
