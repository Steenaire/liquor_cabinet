class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true
  validates :username, uniqueness: true

  has_many :cabinets
  has_many :ingredients, through: :cabinets

  has_many :recipes
  has_many :timeline_drinks
  has_many :ratings

  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def my_area_drinks
    nearby_drinks = {}
    nearby_users = User.near("#{self.latitude}, #{self.longitude}")
    nearby_users.each do |user|
      if user.timeline_drinks.any?
        user.timeline_drinks.each do |drink|
          if nearby_drinks[drink.recipe]
            nearby_drinks[drink.recipe] += 1
          else
            nearby_drinks[drink.recipe] = 1
          end
        end
      end
    end
    
    return nearby_drinks.sort_by {|_key, value| value}.reverse
  end
  
end
