//
//  CategoriesView.swift
//  Recipee
//
//  Created by Gbenga Abayomi on 05/03/2023.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(Category.allCases){
                    category in
                    Text(category.rawValue + "s")
                }
            }
                .navigationTitle("Categories")
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
