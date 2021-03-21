//
//  ExpListItem.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 16/03/2021.
//

import SwiftUI

struct ExpListItem: View {
  var title: String = ""
  var image: String = ""
  var body: some View {
    HStack {
      HStack {
        Image(image)
          .antialiased(true)
          .resizable()
          .scaledToFill()
          .frame(width: 55, height: 55)
          .clipped()
          .cornerRadius(8.0)
          .padding(.trailing, 10)
      }.padding(.vertical, 8)

      VStack(alignment: .leading) {
        Text(title)
          .font(.headline)
        Text("Python & Django Developer")
          .font(Font.system(size: 14))
          .foregroundColor(.secondary)
          .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
        Text("Aeronotics & Space • 4 months")
          .font(Font.system(size: 14))
          .foregroundColor(.secondary)
          .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
        Divider()
      }

    }.frame(height: 70)
  }
}

struct ExpListItem_Previews: PreviewProvider {
  static var previews: some View {
    ExpListItem(title: "Thales Group", image: "thales")
  }
}
