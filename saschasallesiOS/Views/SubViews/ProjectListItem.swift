//
//  ProjectListItem.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 08/03/2021.
//

import SwiftUI

struct ProjectListItem: View {
    var body: some View {
        HStack(spacing: 15) {
            Image("expense")
                .resizable()
                .scaledToFill()
                .frame(width: 100)
                .clipped()
                .cornerRadius(6)

            

            VStack(alignment: .leading, spacing: 5) {
                Text("Expense App")
                    .font(.headline)


                Text("An expenses management app. Set financial goals and track your expenses with the Expenses application.")
                    .font(Font.system(size: 14))
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                Spacer()
                Divider()
            }.frame(height: 100, alignment: .top)

        }.frame(height: 100)
    }
}

struct ProjectListItem_Previews: PreviewProvider {
    static var previews: some View {
        ProjectListItem()
    }
}
