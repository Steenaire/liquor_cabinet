class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true
  validates :username, uniqueness: true

  has_many :cabinets
  has_many :ingredients, through: :cabinets

  has_many :recipes
  has_many :timeline_drinks
  has_many :ratings
  has_many :visits

  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def my_area_drinks
    nearby_drinks = {}
    nearby_drinks_top_ten = []
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

      if user.ratings.any?
        user.ratings.each do |rating|
          if nearby_drinks[rating.recipe]
            nearby_drinks[rating.recipe] += 1
          else
            nearby_drinks[rating.recipe] = 1
          end
        end
      end

    end
    
    sorted_nearby_drinks = nearby_drinks.sort_by {|_key, value| value}.reverse

    sorted_nearby_drinks.each_with_index do |drink,index|
      nearby_drinks_top_ten<<drink[0]
      return nearby_drinks_top_ten if index == 9
    end

    return nearby_drinks_top_ten

  end
  
end
