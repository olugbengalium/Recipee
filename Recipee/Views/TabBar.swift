//
//  TabBar.swift
//  Recipee
//
//  Created by Gbenga Abayomi on 05/03/2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView().tabItem{
                Label("Home", systemImage:"house")
            }
            CategoriesView().tabItem{
                Label("Categories", systemImage:"square.fill.text.grid.1x2")
            }
            NewRecipee().tabItem{
                Label("New", systemImage:"plus")
            }
            FavoritesView().tabItem{
                Label("Favorites", systemImage:"heart")
            }
            SettingsView().tabItem{
                Label("Settings", systemImage:"gear")
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
