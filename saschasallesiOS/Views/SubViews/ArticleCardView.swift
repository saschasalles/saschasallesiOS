//
//  ArticleCardView.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 10/03/2021.
//

import SwiftUI

struct ArticleCardView: View {
    var body: some View {
        
        
        Image("expense")
            .resizable()
            .scaledToFill()
            .overlay(
                HStack {
                    Spacer()
                    VStack(spacing: 5) {

                        Text("Swiftlint en 5 minutes")
                            .font(.headline)
                            .foregroundColor(.white)
                            
                        Text("20 min de lecture")
                            .font(.callout)
                            .foregroundColor(.white)
                    }
                    .frame(height: 80,  alignment: .center)
                    Spacer()
                }
                .background(BlurView(style: .regular))
            , alignment: .bottom)
            .frame(width: 320, height: 380)
            .clipped()
            .cornerRadius(12)







    }
}

struct ArticleCardView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCardView()
    }
}
