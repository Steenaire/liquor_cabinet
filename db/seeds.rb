User.create!([
  {username: "Weens", email: "weens@dreans.com", password_digest: "$2a$10$6YaTUufAzZt3z9XTyONTQ.liIHJshaUBXPwCPfi9U0ToEZ.x4sLJq", address: "", city: "Milan", zip_code: "", latitude: 45.4654219, longitude: 9.1859243, timezone: nil},
  {username: "Wails", email: "wails@whales.com", password_digest: "$2a$10$kanq4lC/qfuvC235ruujW.imnW8ZPC9Xogx31LnkUN28KassAEiw.", address: "24 Park Groton Place", city: "San Jose", zip_code: "95135", latitude: 37.270232, longitude: -121.826874, timezone: "America/Los_Angeles"},
  {username: "Steen", email: "cmclarkey@gmail.com", password_digest: "$2a$10$gCYKtV7FKkzzQBgyziAPTeSHO1tDMEnHHAS2.20.xSy4nT18bMg3.", address: nil, city: nil, zip_code: nil, latitude: 37.756616, longitude: -122.41808, timezone: "America/Los_Angeles"},
  {username: "Bean", email: "beany@gmail.com", password_digest: "$2a$10$J.WpxiJBPf4M7f61xA3PIu9zGn/9jR.xlI5i1EM4fs/spGIAzPYUG", address: nil, city: nil, zip_code: nil, latitude: nil, longitude: nil, timezone: "America/Los_Angeles"},
  {username: "Steenaire", email: "cclarke@hotmail.com", password_digest: "$2a$10$tQWr95VVc.YdHjfISgbscenyf0ou25mhdLuBN4Gpw21BI9.yN5PYG", address: "626 Capp Street #201", city: "San Francisco", zip_code: "94110", latitude: 37.756616, longitude: -122.41808, timezone: "America/Los_Angeles"},
  {username: "Beanie", email: "beans@steens.com", password_digest: "$2a$10$ebfsjOCSNB62na9zmDMA0egrbOkZfO0ccbnWg7ke12TJiPLe1OslW", address: "", city: "", zip_code: "94110", latitude: 37.7485824, longitude: -122.4184108, timezone: "America/Los_Angeles"},
  {username: "Geanie", email: "geans@beans.com", password_digest: "$2a$10$cX.A1bqc4wwZVmZIrChhT.EYqQWoAYl4h6LxiB/1iOatmSdS4OYSq", address: "626 Capp Street", city: "", zip_code: "", latitude: 37.756616, longitude: -122.41808, timezone: "America/Los_Angeles"}
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
  {name: "Mint"}
])

Brand.create!([
  {name: "Hendricks"},
  {name: nil}
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
  {user_id: 1, ingredient_id: 11, brand_id: 2}
])

Recipe.create!([
  {name: "Classic Martini", instructions: "Combine the gin and vermouth in a shaker, fill it halfway with ice, and stir vigorously until well chilled, about 20 seconds. Strain into the chilled glass. Garnish with olives or a twist of lemon.", description: "The classic gin martini. No Vodka allowed!", user_id: 1, card_image: nil},
  {name: "Manhattan", instructions: "Fill a short glass 2/3 full with ice. Add bitters, vermouth, and bourbon. Add cherry (and crush it against the side of the glass with a spoon). Stir.", description: "The classic Manahttan with bourbon and sweet vermouth, like the whiskey version of a Martini!", user_id: 1, card_image: nil},
  {name: "Hendricks Martini", instructions: "Combine the gin and vermouth in a shaker, fill it halfway with ice, and stir vigorously until well chilled, about 20 seconds. Strain into the chilled glass. Garnish with olives or a twist of lemon.", description: "A delicious martini made with Hendricks gin", user_id: 1, card_image: nil},
  {name: "Greenpoint", instructions: "Stir with ice and strain in to a cocktail glass. Garnish with a lemon zest twist.", description: "A variation on the Brooklyn, which is itself a variation on the Manhattan. Tasty and hip, with the Chartreuse giving it a pretty hint of green.", user_id: 1, card_image: nil},
  {name: "Highball", instructions: "In a chilled collins glass, add several cubes of clear ice. Pour in whisky and stir several times, then top with soda. Add a straw.", description: "The classic Scotch & Soda of yesteryear", user_id: 1, card_image: nil},
  {name: "etst", instructions: "test", description: "test", user_id: 1, card_image: "stock-photo-glasses-with-wine-on-table-party-background-141935788.jpg"},
  {name: "Cup of Gin", instructions: "Pour gin into a cup", description: "It is just a cup of gin. No frills.", user_id: 2, card_image: nil},
  {name: "Bourboney Gin", instructions: "Mix ingredients together on ice, dash on the bitters, strain and serve in a chilled highball", description: "A weird drink make of bourbon and gin mixed together", user_id: 1, card_image: nil},
  {name: "Bourbon and Vernouth", instructions: "Mix ingredients together on ice, dash on the bitters, strain and serve in a chilled highball", description: "Bourbon mixed with vermouth in a cup", user_id: 1, card_image: nil},
  {name: "Sidecar", instructions: "Mix ingredients together on ice, strain and serve in a chilled highball", description: "A tasty libation inspired by a great alcoholic, Earnest Hemingway.", user_id: 1, card_image: nil}
])

Rating.create!([
  {user_id: 1, recipe_id: 1, score: 5},
  {user_id: 1, recipe_id: 2, score: 4},
  {user_id: 1, recipe_id: 4, score: 5},
  {user_id: 1, recipe_id: 3, score: 4},
  {user_id: 1, recipe_id: 52, score: 5},
  {user_id: 1, recipe_id: 53, score: 3},
  {user_id: 2, recipe_id: 3, score: 5},
  {user_id: 2, recipe_id: 52, score: 1},
  {user_id: 2, recipe_id: 53, score: 4},
  {user_id: 2, recipe_id: 1, score: 5},
  {user_id: 2, recipe_id: 2, score: 4},
  {user_id: 2, recipe_id: 4, score: 5},
  {user_id: 2, recipe_id: 57, score: 5},
  {user_id: 1, recipe_id: 54, score: 3},
  {user_id: 7, recipe_id: 4, score: 5},
  {user_id: 1, recipe_id: 64, score: 3}
])

RecipeIngredient.create!([
  {ingredient_id: 1, recipe_id: 72, quantity: "2.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 1, recipe_id: 52, quantity: "2.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 1, recipe_id: 53, quantity: "2.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 4, recipe_id: 53, quantity: "1.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 12, recipe_id: 57, quantity: "2.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 11, recipe_id: 57, quantity: "1.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 13, recipe_id: 57, quantity: "0.5", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 1, recipe_id: 3, quantity: "2.0", garnish: false, brand_id: 1, measurement: "volume (oz)"},
  {ingredient_id: 2, recipe_id: 3, quantity: "1.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 1, recipe_id: 1, quantity: "2.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 2, recipe_id: 1, quantity: "1.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 4, recipe_id: 2, quantity: "2.5", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 5, recipe_id: 2, quantity: "1.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 5, recipe_id: 4, quantity: "0.5", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 8, recipe_id: 4, quantity: "0.5", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 9, recipe_id: 4, quantity: "2.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 14, recipe_id: 62, quantity: "2.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 16, recipe_id: 62, quantity: "4.0", garnish: false, brand_id: 2, measurement: "volume (oz)"},
  {ingredient_id: 10, recipe_id: 53, quantity: "1.0", garnish: false, brand_id: 2, measurement: "dash"},
  {ingredient_id: 10, recipe_id: 54, quantity: "1.0", garnish: false, brand_id: 2, measurement: "dash"},
  {ingredient_id: 7, recipe_id: 2, quantity: "2.0", garnish: false, brand_id: 2, measurement: "dash"},
  {ingredient_id: 3, recipe_id: 1, quantity: "1.0", garnish: true, brand_id: 2, measurement: "count"},
  {ingredient_id: 6, recipe_id: 2, quantity: "1.0", garnish: true, brand_id: 2, measurement: "count"},
  {ingredient_id: 3, recipe_id: 3, quantity: "1.0", garnish: true, brand_id: 2, measurement: "count"},
  {ingredient_id: 7, recipe_id: 4, quantity: "1.0", garnish: false, brand_id: 2, measurement: "dash"},
  {ingredient_id: 10, recipe_id: 4, quantity: "1.0", garnish: false, brand_id: 2, measurement: "dash"}
])
TimelineDrink.create!([
  {user_id: 6, recipe_id: 1, comment: nil},
  {user_id: 7, recipe_id: 2, comment: nil},
  {user_id: 7, recipe_id: 52, comment: nil},
  {user_id: 7, recipe_id: 1, comment: nil},
  {user_id: 7, recipe_id: 4, comment: nil},
  {user_id: 7, recipe_id: 62, comment: nil},
  {user_id: 7, recipe_id: 1, comment: nil},
  {user_id: 7, recipe_id: 1, comment: nil},
  {user_id: 7, recipe_id: 57, comment: "Absolutely delicious! Would make again. Only suggestion is to garnish with a lemon twist."},
  {user_id: 1, recipe_id: 57, comment: "Tasty and refreshing. Would make again!"},
  {user_id: 7, recipe_id: 1, comment: ""},
  {user_id: 7, recipe_id: 2, comment: "A delicious classic, I would recommend adding an orange peel"},
  {user_id: 3, recipe_id: 1, comment: "Always a classic!"},
  {user_id: 3, recipe_id: 2, comment: "It's like the martini of bourbon!"},
  {user_id: 3, recipe_id: 57, comment: ""}
])

