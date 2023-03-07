//
//  RecipeView.swift
//  Recipee
//
//  Created by Gbenga Abayomi on 06/03/2023.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: recipe.image))
                    { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    }
                    placeholder: { Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                        .frame(width: 70, height: 70, alignment: .center)
                        .frame(maxWidth: .infinity,maxHeight: .infinity)
                    }
                    .frame(height: 300)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
        VStack(spacing: 30){
            Text(recipe.name)
                .font(.largeTitle)
                .foregroundColor(.yellow)
                .bold()
                .multilineTextAlignment(.center)
        }
            VStack(alignment: .leading, spacing: 30){
                Text(recipe.description)
                VStack(alignment: .leading, spacing: 20){
                    Text("Ingredients")
                        .font(.headline)
                    Text(recipe.ingredients)
                    Text("Directions")
                        .font(.headline)
                    Text(recipe.directions)
                }
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding()
        }
        .padding()
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
