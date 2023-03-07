//
//  FavoritesView.swift
//  Recipee
//
//  Created by Gbenga Abayomi on 05/03/2023.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("You haven't saved any recipee to your favorites yet")
                .padding()
                .navigationTitle("Favorites")
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
