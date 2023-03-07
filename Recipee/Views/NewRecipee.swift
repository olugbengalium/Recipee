//
//  NewRecipee.swift
//  Recipee
//
//  Created by Gbenga Abayomi on 05/03/2023.
//

import SwiftUI


struct NewRecipee: View {
    var body: some View {
        NavigationView {
            RecipeView(recipe: Recipe.all[0])
            Text("New Recipe")
                .navigationTitle("New Recipe")
        }
    }
}

struct NewRecipee_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipee()
    }
}
