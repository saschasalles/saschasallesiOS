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
                ScrollView {
                    Divider()
                        .padding(.leading)
                    VStack(alignment: .leading, spacing: 4) {

                        Text("Last Articles")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.horizontal)


                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 0) {
                                ForEach(0..<5) { _ in
                                    ArticleCardView(title: "Swift in 1h", duration: "10 min", image: "expense", width: abs(geo.size.width * 0.67))
                                        .padding(.leading)
                                }
                                ArticleCardView(title: "Voir tous les articles", duration: nil, image: nil, width: abs(geo.size.width * 0.67))
                                    .padding(.leading)
                                    

                            }.padding(.trailing)
                        }

                    }
                    
                    LazyVStack(alignment: .leading) {
                        HStack {
                            Text("Last Projects")
                                .font(.title2)
                                .bold()
                                .padding(.vertical)

                            Spacer()
                            Button(action: {
                                print("all certificates")
                            }, label: {
                                Text("See All")
                                    .padding(.horizontal, 10)
                            })
                        }

                        LazyVStack(spacing: 10) {
                            ProjectListItem()
                            ProjectListItem()
                        }
                    }.padding(.horizontal)
                }.padding(.top, 5)


                    .navigationBarTitle("News")
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
