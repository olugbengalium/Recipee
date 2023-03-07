//
//  RecipeCard.swift
//  Recipee
//
//  Created by Gbenga Abayomi on 06/03/2023.
//

import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: recipe.image))
                    { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .overlay(alignment: .bottom){
                                Text(recipe.name)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: 136)
                            }
                    }
                    placeholder: { Image(systemName: "photo")
                            .resizable()
                        
                    }
        }
        .frame(width: 160, height: 217, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe.all[0])
    }
}
