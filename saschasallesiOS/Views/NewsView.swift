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
            GeometryReader { geo in
            ScrollView() {

                
                    VStack(alignment: .center, spacing: 30) {
                        ForEach(0..<10) { _ in
                            ArticleCardView(title: "Swift in 1h", duration: "10 min", width: abs(geo.size.width * 0.85))

                        }
                    }
                    .frame(width: geo.size.width, height: nil, alignment: .center)
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
