//
//  HeaderView.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 16/03/2021.
//

import SwiftUI

struct HeaderView: View {
  @EnvironmentObject var articleVM: ArticleViewModel
  @Environment(\.colorScheme) var scheme

  var body: some View {
    VStack(alignment: .leading, spacing: 0) {
      ZStack {
        VStack(alignment: .leading, spacing: 10, content: {
          Text("SwiftUI • Swift • GeometryReader")
            .font(.caption)
          HStack(spacing: 8) {
            Image(systemName: "clock")
              .font(.caption)
            Text("30-40 Min")
              .font(.caption)
          }
            .frame(maxWidth: .infinity, alignment: .leading)
        })
          .opacity(articleVM.offset > 250 ? 0 : 1)

        ScrollViewReader { reader in
          ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(spacing: 0) {
              ForEach(sectionItems) { sec in
                Text(sec.title)
                  .font(.caption)
                  .padding(.vertical, 10)
                  .padding(.horizontal)
                  .background(Color(.systemIndigo).opacity(articleVM.selection == sec.title ? 1 : 0))
                  .clipShape(Capsule())
                  .foregroundColor(articleVM.selection == sec.title ? scheme == .dark ? .black : .white: .primary)
                  .id(sec.title)
              }
                .onChange(of: articleVM.selection, perform: { _ in
                withAnimation(.easeInOut) {
                  reader.scrollTo(articleVM.selection, anchor: .leading)
                }
              })
            }
          })
            .opacity(articleVM.offset > 250 ? Double((articleVM.offset - 250) / 50) : 0)
        }
      }
        .frame(height: 60)
    }
      .padding(.horizontal)
      .frame(height: 80)
      .background(BlurView(style: .regular))
  }

  func getSize() -> CGFloat {
    if articleVM.offset > 250 {
      let progress = (articleVM.offset - 250) / 50
      if progress <= 1.0 { return progress * 40 } else { return 40 }
    } else { return 0 }
  }
}

struct HeaderView_Previews: PreviewProvider {
  static var previews: some View {
    HeaderView()
  }
}
