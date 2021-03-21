//
//  StudiesCardView.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 08/03/2021.
//

import SwiftUI

struct StudiesCardView: View {
  var size: CGFloat
  var image: String
  var title: String
  var year: String
  var degree: String
  var description: String

  var body: some View {

    Color(.tertiarySystemBackground)
      .overlay(
      VStack(alignment: .leading) {
        Image(self.image)
          .resizable()
          .overlay(
          VStack(alignment: .trailing) {
            Text(self.year)
              .font(Font.system(.headline, design: .rounded))
              .foregroundColor(Color(.white))
              .bold()
              .padding(.vertical, 3)
              .padding(.horizontal, 12)
              .background(
              Color(#colorLiteral(red: 0.252296589, green: 0.1200784283, blue: 0.7973010216, alpha: 0.7478314842))
                .cornerRadius(18)
            )
              .padding(15)
          }.frame(width: abs(self.size), alignment: .trailing), alignment: .topTrailing
        )

        VStack(alignment: .leading, spacing: 3) {

          Text(self.title)
            .font(.headline)

          VStack(alignment: .leading) {
            Text(self.degree)
              .font(Font.system(.footnote, design: .rounded))
              .fontWeight(.light)

            Text(self.description)
              .font(Font.system(.footnote, design: .rounded))
              .fontWeight(.light)

          }

        }.padding(.horizontal)
          .padding(.bottom, 10)

      }, alignment: .leading
    )
      .frame(width: abs(self.size), height: 300)

      .cornerRadius(12)
      .shadow(color: Color(.systemGray5), radius: 5)

  }
}

struct StudiesCardView_Previews: PreviewProvider {
  static var previews: some View {
    StudiesCardView(
      size: 300,
      image: "lycee",
      title: "Lycée Sud des Landes",
      year: "2018",
      degree: "Scientific Baccalaureat",
      description: "Computer Science spécialisation")
  }
}
