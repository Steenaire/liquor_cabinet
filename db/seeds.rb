Brand.create!([
  {name: "Hendricks"},
  {name: nil}
])
Ingredient.create!([
  {name: "Gin"},
  {name: "Dry Vermouth"},
  {name: "Olive"},
  {name: "Bourbon"},
  {name: "Sweet Vermouth"},
  {name: "Cherry"},
  {name: "Angostura Bitters"},
  {name: "Yellow Chartreuse"},
  {name: "Rye Whiskey"},
  {name: "Orange Bitters"},
  {name: "Cointreau"},
  {name: "Cognac"},
  {name: "Lemon Juice"},
  {name: "Scotch"},
  {name: "Soda Water"},
  {name: "Green Chartreuse"},
  {name: "Lime Juice"},
  {name: "Mint"},
  {name: "Apple Shrub"},
  {name: "Raspberry Shrub"},
  {name: "Blackberry Shrub"},
  {name: "Midori"},
  {name: "Maraschino Liqueur"},
  {name: "Crème De Violette"}
])
User.create!([
  {username: "Weens", email: "weens@dreans.com", password_digest: "$2a$10$6YaTUufAzZt3z9XTyONTQ.liIHJshaUBXPwCPfi9U0ToEZ.x4sLJq", address: "", city: "Milan", zip_code: "", latitude: 45.4654219, longitude: 9.1859243, timezone: nil},
  {username: "Wails", email: "wails@whales.com", password_digest: "$2a$10$kanq4lC/qfuvC235ruujW.imnW8ZPC9Xogx31LnkUN28KassAEiw.", address: "24 Park Groton Place", city: "San Jose", zip_code: "95135", latitude: 37.270232, longitude: -121.826874, timezone: "America/Los_Angeles"},
  {username: "Steen", email: "cmclarkey@gmail.com", password_digest: "$2a$10$gCYKtV7FKkzzQBgyziAPTeSHO1tDMEnHHAS2.20.xSy4nT18bMg3.", address: nil, city: nil, zip_code: nil, latitude: 37.756616, longitude: -122.41808, timezone: "America/Los_Angeles"},
  {username: "Bean", email: "beany@gmail.com", password_digest: "$2a$10$J.WpxiJBPf4M7f61xA3PIu9zGn/9jR.xlI5i1EM4fs/spGIAzPYUG", address: nil, city: nil, zip_code: nil, latitude: nil, longitude: nil, timezone: "America/Los_Angeles"},
  {username: "Steenaire", email: "cclarke@hotmail.com", password_digest: "$2a$10$tQWr95VVc.YdHjfISgbscenyf0ou25mhdLuBN4Gpw21BI9.yN5PYG", address: "626 Capp Street #201", city: "San Francisco", zip_code: "94110", latitude: 37.756616, longitude: -122.41808, timezone: "America/Los_Angeles"},
  {username: "Beanie", email: "beans@steens.com", password_digest: "$2a$10$ebfsjOCSNB62na9zmDMA0egrbOkZfO0ccbnWg7ke12TJiPLe1OslW", address: "", city: "", zip_code: "94110", latitude: 37.7485824, longitude: -122.4184108, timezone: "America/Los_Angeles"},
  {username: "Geanie", email: "geans@beans.com", password_digest: "$2a$10$cX.A1bqc4wwZVmZIrChhT.EYqQWoAYl4h6LxiB/1iOatmSdS4OYSq", address: "626 Capp Street", city: "", zip_code: "", latitude: 37.756616, longitude: -122.41808, timezone: "America/Los_Angeles"},
  {username: "Witchy", email: "cmclarkey@gmail.com", password_digest: "$2a$10$pAkUHrirOgIsprlydFpLYO2rndNP/iv2GA2cgsKDD.RBRZk.3csy.", address: "626 Capp Street #201", city: "San Francisco", zip_code: "94110", latitude: 37.756616, longitude: -122.41808, timezone: "America/Los_Angeles"},
  {username: "Witchitah", email: "cmclarkey@gmail.com", password_digest: "$2a$10$A1xP26gbf07tVuIlvJpgQOBGE9fo0AR7gks739/IO2IKp.2qhqrum", address: "", city: "San Francisco", zip_code: "", latitude: 37.7749295, longitude: -122.4194155, timezone: "America/Los_Angeles"},
  {username: "Rumplestiltskin", email: "cmclarkey@gmail.com", password_digest: "$2a$10$vo.GEQQ7qlP59eB5LflrkeYnQxavwcJO/7ejpvUiL8IbrMndEg6O6", address: "", city: "San Francisco", zip_code: "", latitude: 37.7749295, longitude: -122.4194155, timezone: "America/Los_Angeles"},
  {username: "Wegw", email: "cmclarkey@gmail.com", password_digest: "$2a$10$7PZ4HLux8OvAwGgoIluFQ.nJjIOUYxtXJBeOVgnGGaQaStngQMHIm", address: "626 Capp Street #201", city: "San Francisco", zip_code: "94110", latitude: 33.4129843, longitude: -94.0616537, timezone: "America/Los_Angeles"},
  {username: "Faweg", email: "cmclarkey@gmail.com", password_digest: "$2a$10$..lsjfBp61nKcA1p638bBOP0Dmba25Kn0u52ErRKnsclYNmpcMkcy", address: "626 Capp Street", city: "San Francisco", zip_code: "94110", latitude: 37.756616, longitude: -122.41808, timezone: "America/Los_Angeles"}
])
Cabinet.create!([
  {user_id: 1, ingredient_id: 2, brand_id: 2},
  {user_id: 1, ingredient_id: 5, brand_id: 2},
  {user_id: 1, ingredient_id: 7, brand_id: 2},
  {user_id: 1, ingredient_id: 1, brand_id: 2},
  {user_id: 1, ingredient_id: 4, brand_id: 2},
  {user_id: 1, ingredient_id: 3, brand_id: 2},
  {user_id: 2, ingredient_id: 1, brand_id: 2},
  {user_id: 2, ingredient_id: 2, brand_id: 2},
  {user_id: 2, ingredient_id: 4, brand_id: 2},
  {user_id: 1, ingredient_id: 8, brand_id: 2},
  {user_id: 1, ingredient_id: 11, brand_id: 2},
  {user_id: 11, ingredient_id: 7, brand_id: 2},
  {user_id: 11, ingredient_id: 4, brand_id: 2},
  {user_id: 11, ingredient_id: 5, brand_id: 2},
  {user_id: 11, ingredient_id: 6, brand_id: 2},
  {user_id: 11, ingredient_id: 1, brand_id: 2},
  {user_id: 11, ingredient_id: 2, brand_id: 2},
  {user_id: 11, ingredient_id: 23, brand_id: 2},
  {user_id: 12, ingredient_id: 24, brand_id: 2},
  {user_id: 12, ingredient_id: 25, brand_id: 2},
  {user_id: 12, ingredient_id: 1, brand_id: 2},
  {user_id: 12, ingredient_id: 13, brand_id: 2}
])
Recipe.create!([
  {name: "Classic Martini", instructions: "Combine the gin and vermouth in a shaker, fill it halfway with ice, and stir vigorously until well chilled, about 20 seconds. Strain into the chilled glass. Garnish with olives or a twist of lemon.", description: "The classic gin martini. No Vodka allowed!", user_id: 1, card_image: nil, photo_credit: nil, photo_credit_url: nil},
  {name: "Manhattan", instructions: "Fill a short glass 2/3 full with ice. Add bitters, vermouth, and bourbon. Add cherry (and crush it against the side of the glass with a spoon). Stir.", description: "The classic Manahttan with bourbon and sweet vermouth, like the whiskey version of a Martini!", user_id: 1, card_image: nil, photo_credit: nil, photo_credit_url: nil},
  {name: "Hendricks Martini", instructions: "Combine the gin and vermouth in a shaker, fill it halfway with ice, and stir vigorously until well chilled, about 20 seconds. Strain into the chilled glass. Garnish with olives or a twist of lemon.", description: "A delicious martini made with Hendricks gin", user_id: 1, card_image: nil, photo_credit: nil, photo_credit_url: nil},
  {name: "Greenpoint", instructions: "Stir with ice and strain in to a cocktail glass. Garnish with a lemon zest twist.", description: "A variation on the Brooklyn, which is itself a variation on the Manhattan. Tasty and hip, with the Chartreuse giving it a pretty hint of green.", user_id: 1, card_image: nil, photo_credit: nil, photo_credit_url: nil},
  {name: "Cup of Gin", instructions: "Pour gin into a cup", description: "It is just a cup of gin. No frills.", user_id: 2, card_image: nil, photo_credit: nil, photo_credit_url: nil},
  {name: "Highball", instructions: "In a chilled collins glass, add several cubes of clear ice. Pour in whisky and stir several times, then top with soda. Add a straw.", description: "The classic Scotch & Soda of yesteryear", user_id: 1, card_image: nil, photo_credit: nil, photo_credit_url: nil},
  {name: "Bourboney Gin", instructions: "Mix ingredients together on ice, dash on the bitters, strain and serve in a chilled highball", description: "A weird drink make of bourbon and gin mixed together", user_id: 1, card_image: nil, photo_credit: nil, photo_credit_url: nil},
  {name: "Bourbon and Vernouth", instructions: "Mix ingredients together on ice, dash on the bitters, strain and serve in a chilled highball", description: "Bourbon mixed with vermouth in a cup", user_id: 1, card_image: nil, photo_credit: nil, photo_credit_url: nil},
  {name: "Sidecar", instructions: "Mix ingredients together on ice, strain and serve in a chilled highball", description: "A tasty libation inspired by a great alcoholic, Earnest Hemingway.", user_id: 1, card_image: nil, photo_credit: nil, photo_credit_url: nil},
  {name: "Aviation", instructions: "Add all the ingredients to a shaker and fill with ice. Shake and strain into a cocktail glass. Garnish with cherry or lemon twist.", description: "A beautiful lavender drink which gets its color from the crème de violette, this is a perfectly balanced pre-prohibition era drink with complexity and class.", user_id: 12, card_image: "16165425281_1965f40bee_o.jpg", photo_credit: "Chris Pople", photo_credit_url: "https://www.flickr.com/photos/60173925@N06/16165425281/"},
  {name: "etst", instructions: "test", description: "test", user_id: 1, card_image: "stock-photo-glasses-with-wine-on-table-party-background-141935788.jpg", photo_credit: nil, photo_credit_url: nil}
])
Rating.create!([
  {user_id: 1, recipe_id: 1, score: 5},
  {user_id: 1, recipe_id: 2, score: 4},
  {user_id: 1, recipe_id: 4, score: 5},
  {user_id: 1, recipe_id: 3, score: 4},
  {user_id: 2, recipe_id: 3, score: 5},
  {user_id: 2, recipe_id: 1, score: 5},
  {user_id: 2, recipe_id: 2, score: 4},
  {user_id: 2, recipe_id: 4, score: 5},
  {user_id: 7, recipe_id: 4, score: 5},
  {user_id: 11, recipe_id: 1, score: 5},
  {user_id: 11, recipe_id: 2, score: 4},
  {user_id: 11, recipe_id: 4, score: 5},
  {user_id: 1, recipe_id: 5, score: 5},
  {user_id: 2, recipe_id: 5, score: 1},
  {user_id: 11, recipe_id: 5, score: 2},
  {user_id: 11, recipe_id: 10, score: 1},
  {user_id: 2, recipe_id: 8, score: 5},
  {user_id: 1, recipe_id: 6, score: 3},
  {user_id: 2, recipe_id: 6, score: 4},
  {user_id: 11, recipe_id: 6, score: 3},
  {user_id: 12, recipe_id: 11, score: 5},
  {user_id: 1, recipe_id: 7, score: 3},
  {user_id: 11, recipe_id: 7, score: 4}
])
RecipeIngredient.create!([
  {ingredient_id: 12, recipe_id: 8, quantity: "2.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 1, recipe_id: 10, quantity: "2.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 1, recipe_id: 3, quantity: "2.0", garnish: false, brand_id: 1, measurement: "volume (oz)"},
  {ingredient_id: 2, recipe_id: 3, quantity: "1.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 1, recipe_id: 1, quantity: "2.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 2, recipe_id: 1, quantity: "1.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 4, recipe_id: 2, quantity: "2.5", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 5, recipe_id: 2, quantity: "1.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 5, recipe_id: 4, quantity: "0.5", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 8, recipe_id: 4, quantity: "0.5", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 9, recipe_id: 4, quantity: "2.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 4, recipe_id: 6, quantity: "1.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 1, recipe_id: 6, quantity: "2.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 13, recipe_id: 8, quantity: "0.5", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 25, recipe_id: 11, quantity: "0.25", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 7, recipe_id: 2, quantity: "2.0", garnish: false, brand_id: 2, measurement: "dash"},
  {ingredient_id: 3, recipe_id: 1, quantity: "1.0", garnish: true, brand_id: 2, measurement: "count"},
  {ingredient_id: 6, recipe_id: 2, quantity: "1.0", garnish: true, brand_id: 2, measurement: "count"},
  {ingredient_id: 3, recipe_id: 3, quantity: "1.0", garnish: true, brand_id: 2, measurement: "count"},
  {ingredient_id: 7, recipe_id: 4, quantity: "1.0", garnish: false, brand_id: 2, measurement: "dash"},
  {ingredient_id: 10, recipe_id: 4, quantity: "1.0", garnish: false, brand_id: 2, measurement: "dash"},
  {ingredient_id: 10, recipe_id: 7, quantity: "1.0", garnish: false, brand_id: 2, measurement: "dash"},
  {ingredient_id: 16, recipe_id: 9, quantity: "4.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 6, recipe_id: 11, quantity: "1.0", garnish: true, brand_id: 2, measurement: "count"},
  {ingredient_id: 1, recipe_id: 5, quantity: "2.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 1, recipe_id: 11, quantity: "2.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 11, recipe_id: 8, quantity: "1.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 24, recipe_id: 11, quantity: "0.5", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 10, recipe_id: 6, quantity: "1.0", garnish: false, brand_id: 2, measurement: "dash"},
  {ingredient_id: 14, recipe_id: 9, quantity: "2.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 13, recipe_id: 11, quantity: "0.75", garnish: false, brand_id: 2, measurement: "volume (oz)"}
])
TimelineDrink.create!([
  {user_id: 6, recipe_id: 1, comment: nil, image: nil},
  {user_id: 7, recipe_id: 2, comment: nil, image: nil},
  {user_id: 7, recipe_id: 1, comment: nil, image: nil},
  {user_id: 7, recipe_id: 4, comment: nil, image: nil},
  {user_id: 7, recipe_id: 1, comment: nil, image: nil},
  {user_id: 7, recipe_id: 1, comment: nil, image: nil},
  {user_id: 7, recipe_id: 1, comment: "", image: nil},
  {user_id: 7, recipe_id: 2, comment: "A delicious classic, I would recommend adding an orange peel", image: nil},
  {user_id: 3, recipe_id: 1, comment: "Always a classic!", image: nil},
  {user_id: 3, recipe_id: 2, comment: "It's like the martini of bourbon!", image: nil},
  {user_id: 11, recipe_id: 1, comment: "Can't go wrong with the classic.", image: nil},
  {user_id: 11, recipe_id: 1, comment: "Delicious.", image: "stock-photo-glass-with-martini-focus-on-a-olives-227349394-8590966554eb679d6d4dd7c9b2e6cd49025c8390a4ff7b94ce378b5983edc011.jpg"},
  {user_id: 11, recipe_id: 1, comment: "Perfectly classy, I love to drink this ice-cold on a romantic night in.", image: "stock-photo-green-olives-in-wineglass-focus-on-a-olives-129442334-3f653fbd7631b2c607d0ee018d8c9118ad17ac389f5e9cc0fdd2b1c9bd57575c.jpg"},
  {user_id: 11, recipe_id: 1, comment: "Everybody needs to know how to make a good martini! No vodka allowed!", image: "stock-photo-olive-and-glass-martini-with-candle-very-small-focus-73469890-537465a7e9a8309c6b6e030d48535b56fc3d75b704b5762a093e3154bfd5942c.jpg"},
  {user_id: 7, recipe_id: 5, comment: nil, image: nil},
  {user_id: 7, recipe_id: 8, comment: "Absolutely delicious! Would make again. Only suggestion is to garnish with a lemon twist.", image: nil},
  {user_id: 1, recipe_id: 8, comment: "Tasty and refreshing. Would make again!", image: nil},
  {user_id: 3, recipe_id: 8, comment: "", image: nil},
  {user_id: 7, recipe_id: 9, comment: nil, image: nil},
  {user_id: 12, recipe_id: 11, comment: "Delicious, I love how the sweetness is balanced by the tartness is balanced by the complexity of this drink.", image: nil}
])

10.times do |n|
  user = User.new({username: Faker::Name.name.split[0], email: Faker::Internet.email, zip_code: Faker::Address.postcode})

  user.password_digest = "password"

  city = Geocoder.search(user.zip_code)

  user.city = city[0].city
  user.latitude = city[0].latitude
  user.longitude = city[0].longitude

  Timezone::Lookup.config(:google) do |c|
    c.api_key = ENV['timezone_key']
  end

  user.timezone = Timezone.lookup(user.latitude, user.longitude)
  user.save
end

user_ids = []
recipe_ids = []
users = User.all
recipes = Recipe.all
users.each do |user|
  user_ids << user.id
end
recipes.each do |recipe|
  recipe_ids << recipe.id
end
1000.times do |n|
  timeline_drink=TimelineDrink.new(user_id: user_ids.sample, recipe_id: recipe_ids.sample)
  timeline_drink.save
end


sf_zips = [94102, 94103, 94104, 94105, 94107, 94108, 94109, 94110, 94111, 94112, 94114, 94115, 94116, 94117, 94118, 94121, 94122, 94123, 94124, 94127, 94129, 94130, 94131, 94132, 94133, 94134, 94158]

100.times do 
  user = User.new({username: Faker::Name.name.split[0], email: Faker::Internet.email, zip_code: sf_zips.sample})

  user.password_digest = "password"

  city = Geocoder.search(user.zip_code)

  user.city = city[0].city
  user.latitude = city[0].latitude
  user.longitude = city[0].longitude

  Timezone::Lookup.config(:google) do |c|
    c.api_key = ENV['timezone_key']
  end

  user.timezone = Timezone.lookup(user.latitude, user.longitude)
  user.save
end



ny_zips = [10453, 10457, 10460,10458, 10467, 10468,10451, 10452, 10456,10454, 10455, 10459, 10474,10463, 10471,10466, 10469, 10470, 10475,10461, 10462,10464, 10465, 10472, 10473,11212, 11213, 11216, 11233, 11238,11209, 11214, 11228,11204, 11218, 11219, 11230,11234, 11236, 11239,11223, 11224, 11229, 11235,11201, 11205, 11215, 11217, 11231,11203, 11210, 11225, 11226,11207, 11208,11211, 11222,11220, 11232,11206, 11221, 11237,10026, 10027, 10030, 10037, 10039,10001, 10011, 10018, 10019, 10020, 10036,10029, 10035,10010, 10016, 10017, 10022,10012, 10013, 10014,10004, 10005, 10006, 10007, 10038, 10280,10002, 10003, 10009,10021, 10028, 10044, 10065, 10075, 10128,10023, 10024, 10025,10031, 10032, 10033, 10034, 10040,11361, 11362, 11363, 11364,11354, 11355, 11356, 11357, 11358, 11359, 11360,11365, 11366, 11367,11412, 11423, 11432, 11433, 11434, 11435, 11436,11101, 11102, 11103, 11104, 11105, 11106,11374, 11375, 11379, 11385,11691, 11692, 11693, 11694, 11695, 11697,11004, 11005, 11411, 11413, 11422, 11426, 11427, 11428, 11429,1414, 11415, 11416, 11417, 11418, 11419, 11420, 11421,11368, 11369, 11370, 11372, 11373, 11377, 11378,10302, 10303, 10310,10306, 10307, 10308, 10309, 10312,10301, 10304, 10305,10314]

100.times do 
  user = User.new({username: Faker::Name.name.split[0], email: Faker::Internet.email, zip_code: ny_zips.sample})

  user.password_digest = "password"

  city = Geocoder.search(user.zip_code)

  user.city = city[0].city
  user.latitude = city[0].latitude
  user.longitude = city[0].longitude

  Timezone::Lookup.config(:google) do |c|
    c.api_key = ENV['timezone_key']
  end

  user.timezone = Timezone.lookup(user.latitude, user.longitude)
  user.save
end