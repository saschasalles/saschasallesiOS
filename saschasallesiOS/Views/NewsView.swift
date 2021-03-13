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

            ScrollView {
                VStack(alignment: .center) {
                    GeometryReader { reader in
                        ArticleCardView(title: "Swift in 1h", duration: "10 min", width: abs(reader.size.width - 30))
                    }
                }
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
