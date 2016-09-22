class TimelineDrink < ApplicationRecord

  mount_uploader :image, ImageUploader

  paginates_per 3

  belongs_to :user
  belongs_to :recipe
end
