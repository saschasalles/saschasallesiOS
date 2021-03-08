//
//  StudiesCardView.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 08/03/2021.
//

import SwiftUI

struct StudiesCardView: View {
    var size: CGFloat
    var color: UIColor
    var image: String
    var title: String
    var year: String
    var degree: String
    var description: String


    var body: some View {

        Color(.tertiarySystemBackground)
            .frame(width: abs(self.size), height: 300)

            .overlay(
            VStack(alignment: .leading) {
                Image(self.image)
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .overlay(
                    VStack(alignment: .trailing) {
                        Text(self.year)
                            .font(Font.system(.title2, design: .rounded))
                            .foregroundColor(.white)
                            .bold()
                            .shadow(color: Color.black, radius: 3)
                            .padding(30)
                        Spacer()
                    }.frame(maxWidth: .infinity, alignment: .trailing)
                )
                Spacer()
                VStack(alignment: .leading) {
                    Text(self.title)
                        .font(.title3)
                        .bold()
                        .foregroundColor(Color(self.color))

                    Text(self.degree)
                        .font(.headline)
                    Text(self.description)
                        .font(.callout)
                        .padding(.bottom)
                    Spacer()
                }.padding(.horizontal)
            }
        )
            .cornerRadius(20)
            .shadow(radius: 4)
            .padding(.horizontal)
            .padding(.vertical, 10)
    }
}

struct StudiesCardView_Previews: PreviewProvider {
    static var previews: some View {
        StudiesCardView(size: 300, color: UIColor.brown, image: "lycee", title: "Lycée Sud des Landes", year: "2018", degree: "Scientific Baccalaureat", description: "Computer Science spécialisation")
    }
}
