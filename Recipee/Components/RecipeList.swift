//
//  RecipeList.swift
//  Recipee
//
//  Created by Gbenga Abayomi on 06/03/2023.
//

import SwiftUI

struct RecipeList: View {
    var recipe: [Recipe]
    var body: some View {
        VStack {
            HStack {
                Text("\(recipe.count) \(recipe.count>1 ? "recipes" : "recipe")")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(hue: 0.132, saturation: 0.946, brightness: 0.29))
                    .opacity(2.7)
                Spacer()
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], content: {
                ForEach(recipe) { recipe in
                    NavigationLink(destination: RecipeView(recipe: recipe)){
                        RecipeCard(recipe: recipe)
                    }
                }
            })
        }
        .padding()
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            RecipeList(recipe: Recipe.all)
        }
    }
}
