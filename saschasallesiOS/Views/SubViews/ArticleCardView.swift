//
//  ArticleCardView.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 10/03/2021.
//

import SwiftUI

struct ArticleCardView: View {
    var title: String
    var duration: String
    var width: CGFloat
    var body: some View {
        
        
        Image("expense")
            .resizable()
            .scaledToFill()
            .overlay(
                HStack {
                    Spacer()
                    VStack(spacing: 5) {

                        Text(self.title)
                            .font(.headline)
                            .foregroundColor(.white)
                            
                        Text("\(self.duration) de lecture")
                            .font(.callout)
                            .foregroundColor(.white)
                    }
                    .frame(height: 80,  alignment: .center)
                    Spacer()
                }
                .background(BlurView(style: .regular))
            , alignment: .bottom)
            .frame(width: self.width, height: 360)
            .clipped()
            .cornerRadius(12)

    }
}

struct ArticleCardView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCardView(title: "Swift en 1h", duration: "1h", width: 1.5)
    }
}
