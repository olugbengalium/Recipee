//
//  RecipeModel.swift
//  Recipee
//
//  Created by Gbenga Abayomi on 05/03/2023.

import SwiftUI

enum Category: String, CaseIterable, Identifiable{
    var id: String {self.rawValue}
    case breakfast = "Breakfast"
    case salad = "Salad"
    case soup = "Soup"
    case appetizer = "Appetizer"
    case main = "Main"
    case size = "Size"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
Recipe(name: "Jollof Rice",
       image: "https://i.pinimg.com/564x/42/2c/55/422c55cbb08569b20c5c669b22bb9985.jpg",
       description: "Rice or Jellof rice is a rich and incredibly tasty west African one-pot Meal. It is a very versatile dish, and it is usually made from scratch using Rice, Tomatoes, Pimento peppers, Tomato paste, Scotch bonnet, Onions, Salt, and other spices.",
           ingredients: "Produce 2 Bay leaves 4 cloves Garlic 1 tbsp Ginger 3 Onion, medium 3 Plum tomatoes, 3 Red bell pepper, 2 Scotch bonnet/habanero, 1 tbsp Thyme, 1 Tomato, large",
           directions: "When cooking Jellof rice, building a flavor base is very important. Don’t be in haste to dump your ingredients in the pot otherwise, you will end up with what we call a ”concoction.” Each step counts, so try to do each of the steps in detail. The inevitable foundation for building up the flavor in this meal is to start by sauteeing the Onions. This should take about 3 to 5 minutes. The next thing is to stir in the tomato paste. This adds a deep and rich tomato flavor; I simply fry this for another 5 minutes or thereabout. Add the ginger and garlic and cook along with the tomato paste for another two minutes; Actually, by the time this is ready, you will notice it in the smell. If you keep it cooking any longer, you might risk burning them. Add the blended peppers. Usually, there is no particular time frame for frying this pepper. I often stop when the sauce becomes really thick, and the oil literally floats on top of the sauce. At this point, most of the water is gone, and the sauce no longer smells raw. Trust me, you will know, but just in case you are still in doubt, I would say maybe 15 to 20 minutes depending on the quantity of water in your blended pepper.Finally, in building my flavor, I add the thyme, curry powder, salt, white pepper (good but optional), and seasoning cubes. Adjust the seasoning at this point if there is a need to. Once the flavor is on point, then, I stir in the Rice. Make sure you stir the rice properly until you cover each grain of rice with the sauce. Now add the chicken stock. Give it a brief stir and cover it up with a tight-fitting lid. If your lid is not fitting enough, simply cover the rice with foil paper before covering it with the lid. This is because Jollof needs a lot of steam in order to turn out well. Once the rice comes to a boil, reduce the heat to medium-low immediately and continue to cook until the rice is done, about 20 to 30 minutes. Serve with Fried Chicken, Spicy Grilled Chicken, Grilled Tilapia Fish, or Gizzards and plantains.",
           category: "Breakfast",
           datePublished: "Feb 21, 2023",
           url: "https://cheflolaskitchen.com/jollof-rice/"),
    Recipe(name: "Egusi Soup",
           image: "https://www.allnigerianrecipes.com/wp-content/uploads/2022/11/festive-nigerian-egusi-soup.jpg",
           description: "There is Egusi Soup and then there is Festive Egusi Soup. Festive Egusi Soup is the Egusi Soup you want to prepare for a wedding, party and other events where lots of people with varied tastebuds will be tasting your food.",
           ingredients: "3 cups ground egusi,Beef (Ribs),Stockfish,Red Palm Oil, Crayfish, Peppers ",
           directions: "Spice grinder for grinding the spices and herbs to make the best marinade",
           category: "Soup",
           datePublished: "Feb 12, 2022",
           url: "https://www.allnigerianrecipes.com/soups/nigerian-egusi-soup-festive/"),
    Recipe(name: "Chiken Pie",
           image: "https://www.allnigerianrecipes.com/wp-content/uploads/2019/03/chicken-pie.jpg",
           description: "This Chicken Pie recipe was born out of my craving for Chicken Republic's Chicken Pie. So what do you do when you are craving for a particular food and you are far away from the outlet that makes and sells that food? You go into your kitchen and make some!",
           ingredients: "1kg (2.2 lbs) plain flour (All Purpose Flour), 300g (0.7 lbs) margarine, 2 teaspoons baking powder, ½ teaspoon salt, 1 glass of whole milk or water",
           directions: "Place the minced chicken in a bowl, add the stock cubes (crushed), thyme, salt and some of the curry powder. Mix till everything is combined. Cover and place it in the fridge for 20 minutes. Peel the Irish potatoes and cut into medium cubes. Scrape the carrot and grate. Dice the onion. Set these aside.",
           category: "Snack",
           datePublished: "Nov 23, 2016",
           url: "https://www.allnigerianrecipes.com/snacks/chicken-pie/"),
    Recipe(name: "Zobo (Hibiscus) Sunrise Cocktail",
           image: "https://www.allnigerianrecipes.com/wp-content/uploads/2019/03/zobo-hibiscus-cocktail.jpg",
           description: "Zobo (Hibiscus) Sunrise Cocktail will give you such a lovely feeling, you will not want to stop drinking! It is made with organic hibiscus petals with lots of health benefits and fruit juices.",
           ingredients: " &frac18; cup sugar, ¼ cup zobo petals, ½ cup water, ½ cup orange juice, ½ cup grape juice, 1 slice of orange for decoration,Ice cubes ",
           directions: "First, make the zobo syrup. Rinse the zobo petals very well. Then boil them in a pot with the half cup of water and sugar till you get a solid deep red colour and the sugar has completely dissolved. See video below. Sieve to separate the zobo syrup from the petals. Set the syrup aside. Add ice to a glass cup. Add the orange juice and grape juice.",
           category: "Drink",
           datePublished: "July 20, 2023",
           url: "https://www.allnigerianrecipes.com/drinks/zobo-hibiscus-cocktail/"),
    Recipe(name: "Jollof Rice",
                      image: "https://i.pinimg.com/564x/42/2c/55/422c55cbb08569b20c5c669b22bb9985.jpg",
                      description: "Rice or Jellof rice is a rich and incredibly tasty west African one-pot Meal. It is a very versatile dish, and it is usually made from scratch using Rice, Tomatoes, Pimento peppers, Tomato paste, Scotch bonnet, Onions, Salt, and other spices.",
                          ingredients: "Produce 2 Bay leaves 4 cloves Garlic 1 tbsp Ginger 3 Onion, medium 3 Plum tomatoes, 3 Red bell pepper, 2 Scotch bonnet/habanero, 1 tbsp Thyme, 1 Tomato, large",
                          directions: "When cooking Jellof rice, building a flavor base is very important. Don’t be in haste to dump your ingredients in the pot otherwise, you will end up with what we call a ”concoction.” Each step counts, so try to do each of the steps in detail. The inevitable foundation for building up the flavor in this meal is to start by sauteeing the Onions. This should take about 3 to 5 minutes. The next thing is to stir in the tomato paste. This adds a deep and rich tomato flavor; I simply fry this for another 5 minutes or thereabout. Add the ginger and garlic and cook along with the tomato paste for another two minutes; Actually, by the time this is ready, you will notice it in the smell. If you keep it cooking any longer, you might risk burning them. Add the blended peppers. Usually, there is no particular time frame for frying this pepper. I often stop when the sauce becomes really thick, and the oil literally floats on top of the sauce. At this point, most of the water is gone, and the sauce no longer smells raw. Trust me, you will know, but just in case you are still in doubt, I would say maybe 15 to 20 minutes depending on the quantity of water in your blended pepper.Finally, in building my flavor, I add the thyme, curry powder, salt, white pepper (good but optional), and seasoning cubes. Adjust the seasoning at this point if there is a need to. Once the flavor is on point, then, I stir in the Rice. Make sure you stir the rice properly until you cover each grain of rice with the sauce. Now add the chicken stock. Give it a brief stir and cover it up with a tight-fitting lid. If your lid is not fitting enough, simply cover the rice with foil paper before covering it with the lid. This is because Jollof needs a lot of steam in order to turn out well. Once the rice comes to a boil, reduce the heat to medium-low immediately and continue to cook until the rice is done, about 20 to 30 minutes. Serve with Fried Chicken, Spicy Grilled Chicken, Grilled Tilapia Fish, or Gizzards and plantains.",
                          category: "Breakfast",
                          datePublished: "Feb 21, 2023",
                          url: "https://cheflolaskitchen.com/jollof-rice/"),
                   Recipe(name: "Egusi Soup",
                          image: "https://www.allnigerianrecipes.com/wp-content/uploads/2022/11/festive-nigerian-egusi-soup.jpg",
                          description: "There is Egusi Soup and then there is Festive Egusi Soup. Festive Egusi Soup is the Egusi Soup you want to prepare for a wedding, party and other events where lots of people with varied tastebuds will be tasting your food.",
                          ingredients: "3 cups ground egusi,Beef (Ribs),Stockfish,Red Palm Oil, Crayfish, Peppers ",
                          directions: "Spice grinder for grinding the spices and herbs to make the best marinade",
                          category: "Soup",
                          datePublished: "Feb 12, 2022",
                          url: "https://www.allnigerianrecipes.com/soups/nigerian-egusi-soup-festive/"),
                   Recipe(name: "Chiken Pie",
                          image: "https://www.allnigerianrecipes.com/wp-content/uploads/2019/03/chicken-pie.jpg",
                          description: "This Chicken Pie recipe was born out of my craving for Chicken Republic's Chicken Pie. So what do you do when you are craving for a particular food and you are far away from the outlet that makes and sells that food? You go into your kitchen and make some!",
                          ingredients: "1kg (2.2 lbs) plain flour (All Purpose Flour), 300g (0.7 lbs) margarine, 2 teaspoons baking powder, ½ teaspoon salt, 1 glass of whole milk or water",
                          directions: "Place the minced chicken in a bowl, add the stock cubes (crushed), thyme, salt and some of the curry powder. Mix till everything is combined. Cover and place it in the fridge for 20 minutes. Peel the Irish potatoes and cut into medium cubes. Scrape the carrot and grate. Dice the onion. Set these aside.",
                          category: "Snack",
                          datePublished: "Nov 23, 2016",
                          url: "https://www.allnigerianrecipes.com/snacks/chicken-pie/"),
                   Recipe(name: "Zobo (Hibiscus) Sunrise Cocktail",
                          image: "https://www.allnigerianrecipes.com/wp-content/uploads/2019/03/zobo-hibiscus-cocktail.jpg",
                          description: "Zobo (Hibiscus) Sunrise Cocktail will give you such a lovely feeling, you will not want to stop drinking! It is made with organic hibiscus petals with lots of health benefits and fruit juices.",
                          ingredients: " &frac18; cup sugar, ¼ cup zobo petals, ½ cup water, ½ cup orange juice, ½ cup grape juice, 1 slice of orange for decoration,Ice cubes ",
                          directions: "First, make the zobo syrup. Rinse the zobo petals very well. Then boil them in a pot with the half cup of water and sugar till you get a solid deep red colour and the sugar has completely dissolved. See video below. Sieve to separate the zobo syrup from the petals. Set the syrup aside. Add ice to a glass cup. Add the orange juice and grape juice.",
                          category: "Drink",
                          datePublished: "July 20, 2023",
                          url: "https://www.allnigerianrecipes.com/drinks/zobo-hibiscus-cocktail/")]

}
