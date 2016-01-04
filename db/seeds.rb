Category.create!([
  {title: "Main Course"},
  {title: "Starter"},
  {title: "Dessert"}
])
Keyword.create!([
  {title: "vegetarian"},
  {title: "gluten-free"},
  {title: "fish"},
  {title: "festive"},
  {title: "soup"},
  {title: "kids"}
])
Keyword::HABTM_Recipes.create!([
  {recipe_id: 6, keyword_id: 2},
  {recipe_id: 6, keyword_id: 1},
  {recipe_id: 3, keyword_id: 6},
  {recipe_id: 5, keyword_id: 5},
  {recipe_id: 13, keyword_id: 1},
  {recipe_id: 13, keyword_id: 2},
  {recipe_id: 16, keyword_id: 5},
  {recipe_id: 6, keyword_id: 7},
  {recipe_id: 13, keyword_id: 7},
  {recipe_id: 10, keyword_id: 8}
])
Rating.create!([
  {rating_value: 3, recipe_id: 5},
  {rating_value: 5, recipe_id: 5},
  {rating_value: 3, recipe_id: 5},
  {rating_value: 5, recipe_id: 5},
  {rating_value: 5, recipe_id: 5},
  {rating_value: 5, recipe_id: 3},
  {rating_value: 1, recipe_id: 10},
  {rating_value: 2, recipe_id: 10},
  {rating_value: 3, recipe_id: 3},
  {rating_value: 5, recipe_id: 13},
  {rating_value: 3, recipe_id: 6},
  {rating_value: 5, recipe_id: 9},
  {rating_value: 2, recipe_id: 7}
])
Recipe.create!([
  {title: "Perfect roast turkey", description: "A perfectly seasoned and juicy turkey.", ingredients: "Turkey, salt, butter, onions, celery", method: "Rub the turkey inside and out with the coarse salt. Place the bird in a large stock pot, and cover with cold water. Place in the fridge, and allow the turkey to soak in the salt and water mixture 12 hours, or overnight.\r\nPreheat oven to 180 C / Gas mark 4. Thoroughly rinse the turkey, and discard the brine mixture.\r\nBrush the turkey with 1/2 the melted butter. Place breast side down on a roasting rack in a shallow roasting tin. Stuff the turkey cavity with 1 onion, 1/2 the carrots, 1/2 the celery, 1 sprig of thyme and the bay leaf. Scatter the remaining vegetables and thyme around the bottom of the roasting tin, and cover with the white wine.\r\nRoast uncovered 3 1/2 to 4 hours in the preheated oven, until the internal temperature of the thigh reaches 74 degrees C. Carefully turn the turkey breast side up about 2/3 through the roasting time, and brush with the remaining butter. Allow the bird to stand about 30 minutes before carving.", image: "http://ukcdn.ar-cdn.com/recipes/xlarge/ddabd54d-7ca5-4c3e-977d-0b1e10b9d308.jpg", category_id: 1},
  {title: "Quick smoked salmon pâté", description: "Smoked salmon trimmings blended with fresh herbs and white beans make a delicious pâté that needs no cooking.", ingredients: "Salmon, Dill, Lemon Juice, Parsley, Cannellini beans", method: "Blend the beans, herbs, lemon juice and salmon in a food processor or with a hand-held mixer until it is really smooth. Add salt and black pepper to taste, then transfer the pâté to a serving dish and chill for 30 minutes-1 hour. Serve it with brown toast, crackers or crudités. The pâté is best eaten very fresh.", image: "http://canyoufreeze.com/wp-content/uploads/2014/10/cooked-salmon.jpg", category_id: 2},
  {title: "Spicy chilli bean soup", description: "There's minimal prep time to make this hearty vegetarian stew, which works just as well as an easy dinner or packed in a flask for lunch.", ingredients: "Onion, chilli, tomatoes, mixed beans", method: "Heat the oil in a deep saucepan and fry the chopped onion over a medium heat until tender. Add the garlic and tomato purée, stirring for 1-2 mins until combined. Sprinkle in the spices and cook for another 1 min. Tip in the chopped tomatoes, half fill the can with water, and add to the pan. Pour in the stock and simmer on a medium heat for 10-15 mins, uncovered. Season, then whizz using a hand blender until smooth. Add the beans and red pepper, and cook for another 15 mins until the pepper is tender.", image: "http://www.bbcgoodfood.com/sites/default/files/styles/bbcgf_recipe/public/recipe_images/spicy-chilli-bean-soup.jpg?itok=XssqHGxR", category_id: 1},
  {title: "Chocolate sponge cake", description: "A classic sponge cake made into a chocolate sponge cake. This is completely fail-safe. Use a good quality cocoa powder (not drinking chocolate) for best results!", ingredients: "Sugar, flour, eggs, cocoa powder, butter", method: "Weigh your three eggs with their shells. Take that weight and measure the same amount each for the sugar, margarine and flour. Weigh the flour last. (For example, if the eggs weigh 200g, then the flour should weigh 200g, the sugar 200g and the same for the margarine.)\r\nFor the flour, remove 55g from the weight you measured to match the weight of the eggs. Add 55g of cocoa powder. Combine the flour and cocoa.\r\nPreheat the oven to 170 C / Gas 3. Grease two 23cm sandwich tins and line with baking parchment.\r\nPut all of the margarine and sugar into a large mixing bowl. Cream together with an electric mixer until pale, creamy and fluffy.\r\nCrack ONE egg into a small bowl (incase something is wrong with the egg) then add it to the margarine/sugar mixture. Bake in the preheated oven for 20 minutes. To make sure it has finished baking, use your fingers to very lightly press on the top of the sponge. It should feel spongey and spring back up.\r\n", image: "http://i.dailymail.co.uk/i/pix/2014/01/08/article-0-14FA374C000005DC-973_634x467.jpg", category_id: 3},
  {title: "Garlic bread", description: "A delicious take on the traditional garlic bread. French bread is topped with a Parmesan, garlic and herb butter and then toasted until golden. It's a wonderful side dish to any Italian meal.", ingredients: "Bread, garlic, butter, salt, cheese", method: "Preheat oven to 150 C / Gas 2.\r\nIn a small bowl, mix butter, garlic salt, rosemary, basil, thyme, garlic granules and Parmesan cheese.\r\nSpread each half of the French bread with equal portions of the butter mixture. Sprinkle with additional Parmesan cheese, if desired.\r\nPlace bread halves, crusts down, on a medium baking tray. Bake in the preheated oven 10 to 12 minutes or until the edges are very lightly browned.", image: "http://www.romaniangarlic.com/wp-content/uploads/2015/02/Garlic_Bread.jpg", category_id: 2},
  {title: "Trifle", description: "This is my version of traditional trifle without using jelly. We used to have this nearly every Sunday for dessert when I was growing up. ", ingredients: "Jam, cake, cream, sugar", method: "Spread raspberry jam onto each piece of sponge cake.\r\nThen break the sponge cakes into pieces and place in bottom of large glass bowl.\r\nSprinkle over the fresh raspberries.\r\nNext make a custard by gently heating ONE carton of double cream in a small saucepan.\r\nWhile the cream is heating, beat the egg yolks with the sugar in a bowl until golden yellow and smooth, then strain into clean bowl.\r\nNow pour the warm cream into it, and stir like billyo! Return custard to saucepan on a low heat and stir gently while it thickens. It should be thick enough to coat the back of a metal spoon - then remove it from the heat and leave to cool down.\r\nPour the cooled custard over the sponge cakes. Whip the other carton of cream, but not too stiffly, and spread over the custard.\r\nSprinkle with the flaked almonds, and chill for a couple of hours before scoffing!", image: "https://content2.ocado.com/cmscontent/recipe_image_large/102782.jpg?D2GA", category_id: 3},
  {title: "Spiced carrot & lentil soup", description: "A delicious, spicy blend, packed full of iron and low fat to boot. It's ready in under half an hour or can be made in a slow cooker.", ingredients: "Carrots, lentils, onion, oil, cumin, chilli, stock", method: "Heat a large saucepan and dry-fry the cumin seeds and chilli flakes for 1 min, or until they start to jump around the pan and release their aromas. Scoop out about half of the seeds with a spoon and set aside. Add the oil, carrot, lentils, stock and milk to the pan and bring to the boil. Simmer for 15 mins until the lentils have swollen and softened.\r\n\r\nWhizz the soup with a stick blender or in a food processor until smooth (or leave it chunky if you prefer). Season to taste and finish with a dollop of yogurt and a sprinkling of the reserved toasted spices. Serve with warmed naan breads.", image: "http://www.bbcgoodfood.com/sites/default/files/styles/bbcgf_recipe/public/recipe_images/recipe-image-legacy-id--1074500_11.jpg?itok=1hBMPrvh", category_id: 2},
  {title: "Fish with spiced lentils", description: "A healthy supper, full of flavour, in less than half an hour.", ingredients: "White fish, lime, lentils, onion, curry powder", method: "Finely chop one of the lime quarters, including skin. Heat 2 tbsp oil in a medium saucepan then fry onions over a medium heat for 5 mins until softened and starting to colour. Add the curry powder and tomato purée then fry for another min. Tip in 200ml water, lentils, mango chutney and the chopped lime then bring to the boil. Simmer for 5 mins or until thickened.\r\n\r\nHeat remaining oil in a frying pan. Season the fish with salt and pepper to taste then fry for 5 mins, turning halfway, until golden and cooked through. Add a squeeze of lime to the pan and to the lentils then serve together with naan bread or chapatis on the side.", image: "http://www.bbcgoodfood.com/sites/default/files/styles/bbcgf_recipe/public/recipe_images/recipe-image-legacy-id--4167_11.jpg?itok=IYxr8eWw", category_id: 1}
])
Recipe::HABTM_Keywords.create!([
  {recipe_id: 6, keyword_id: 2},
  {recipe_id: 6, keyword_id: 1},
  {recipe_id: 3, keyword_id: 6},
  {recipe_id: 5, keyword_id: 5},
  {recipe_id: 13, keyword_id: 1},
  {recipe_id: 13, keyword_id: 2},
  {recipe_id: 16, keyword_id: 5},
  {recipe_id: 6, keyword_id: 7},
  {recipe_id: 13, keyword_id: 7},
  {recipe_id: 10, keyword_id: 8}
])
