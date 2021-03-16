//
//  ArticleCardView.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 10/03/2021.
//

import SwiftUI

struct ArticleCardView: View {
    var title: String
    var duration: String?
    var image: String?
    var width: CGFloat
    var body: some View {

        VStack(alignment: .center, spacing: 10) {
            HStack {
                Text("Swift, SwiftUI")
                    .foregroundColor(.secondary)
                    .font(.callout)
                Spacer()
                Text("20/05/20")
                    .foregroundColor(.secondary)
                    .font(.footnote)
            }
            VStack(alignment: .center) {

                Image(image ?? "articles")
                    .antialiased(true)
                    .resizable()
                    .scaledToFill()
                    .shadow(radius: 3)
                    .overlay(
                    HStack {
                        Spacer()
                        VStack(spacing: 5) {

                            Text(self.title)
                                .font(.body)
                                .bold()
                                .foregroundColor(.white)

                            if self.duration != nil {
                                Text("\(self.duration ?? "") de lecture")
                                    .font(.callout)
                                    .foregroundColor(.white)
                            }
                        }

                        Spacer()
                    }
                        .frame(height: 85, alignment: .center)
                        .background(BlurView(style: .regular))
                    , alignment: .bottom)
            }

                .frame(width: self.width, height: 345)
                .cornerRadius(11)
                .background(
                RoundedRectangle(cornerRadius: 11)
                    .fill(Color(.systemIndigo))
                    .frame(width: self.width)
            )
                .padding(.bottom)


        }
            .frame(width: self.width)
    }
}

struct ArticleCardView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCardView(title: "Swift en 1h", duration: "1h", image: "expense", width: 300)
    }
}
