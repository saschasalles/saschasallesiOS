//
//  CertificateListItem.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 08/03/2021.
//

import SwiftUI

struct CertificateListItem: View {
    private var title: String = ""
    private var image: String = ""
    var body: some View {

        HStack {
            HStack {
                Image("occ")
                    .antialiased(true)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 55, height: 55)
                    .clipped()
                    .cornerRadius(8.0)
                    .padding(.trailing, 10)
            }.padding(.vertical, 8)
            VStack(alignment: .leading) {
                Text("OpenClassRoom Certification")
                    .font(.body)
                    .bold()
                Text("Apprenez à ajouter des listes dans vos apps")
                    .font(Font.system(.callout, design: .rounded))
                    .foregroundColor(Color(.systemGray))
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                Divider()
            }
        }
        .frame(height: 70)
    }
}

struct CardMidView_Previews: PreviewProvider {
    static var previews: some View {
        CertificateListItem()
    }
}
