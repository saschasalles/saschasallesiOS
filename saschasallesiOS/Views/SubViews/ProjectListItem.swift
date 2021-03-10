//
//  ProjectListItem.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 08/03/2021.
//

import SwiftUI

struct ProjectListItem: View {
    var body: some View {
        HStack {
            Image("expense")
                .resizable()
                .scaledToFill()
                .frame(width: 120)
                .clipped()
                .cornerRadius(6)
                .padding(.leading, -10)

            VStack(alignment: .leading, spacing: 15) {
                Text("Expense App")
                    .font(.headline)


                Text("An expenses management app. Set financial goals and track your expenses with the Expenses application.")
                    .font(.callout)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                Spacer()

            }
            Spacer()
        }.frame(height: 120)
    }
}

struct ProjectListItem_Previews: PreviewProvider {
    static var previews: some View {
        ProjectListItem()
    }
}
