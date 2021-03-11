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

                
                    
                    ProjectListItem()
                    ProjectListItem()

            }
            .navigationBarTitle("News")
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
