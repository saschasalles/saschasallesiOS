//
//  NewsView.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 08/03/2021.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Last Articles")) {
                    StudiesCardView(size: 300, color: UIColor.brown, image: "lycee", title: "Lycée Sud des Landes", year: "2018", degree: "Scientific Baccalaureat", description: "Computer Science spécialisation")
                }.padding(.vertical)
                
                Section(header: Text("Last Projects")) {
                    ProjectListItem()
                    ProjectListItem()
                    ProjectListItem()
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("News")
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
