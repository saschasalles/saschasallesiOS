//
//  ArticleView.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 16/03/2021.
//

import SwiftUI

struct ArticleView: View {
  @StateObject var articleVM = ArticleViewModel()
  @Environment(\.colorScheme) var scheme

  var body: some View {
    ScrollView {
      LazyVStack(alignment: .leading, spacing: 15, pinnedViews: [.sectionHeaders], content: {

        GeometryReader { reader -> AnyView in
          let offset = reader.frame(in: .global).minY
          if -offset >= 0 {
            DispatchQueue.main.async {
              self.articleVM.offset = -offset
            }
          }

          return AnyView(
            Image("expense")
              .resizable()
              .aspectRatio(contentMode: .fill)
              .frame(width: UIScreen.main.bounds.width, height: 250 + (offset > 0 ? offset : 0))
              .offset(y: (offset > 0 ? -offset : 0))
          )
        }
          .frame(height: 250)
        Section(header: HeaderView()) {
          // Tabs With Content.....
          ForEach(sectionItems) { section in
            VStack(alignment: .leading, spacing: 15, content: {
              Text(section.title)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom)
                .padding(.leading)

              Text(section.content)
                .padding()
                .foregroundColor(.gray)
              Divider()
                .padding(.top)
            })
              .tag(section.title)
              .overlay(
              GeometryReader { reader -> Text in
                let offset = reader.frame(in: .global).minY
                let height = UIApplication.shared.windows.first!.safeAreaInsets.top + 100
                if offset < height && offset > 50 && articleVM .selection != section.title {
                  DispatchQueue.main.async {
                    self.articleVM.selection = section.title
                  }
                }
                return Text("")
              }
            )
          }
        }
      })
    }
      .overlay(
      (scheme == .dark ? Color.black : Color.white)
        .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.top).ignoresSafeArea(.all, edges: .top)
        .opacity(articleVM.offset > 250 ? 1 : 0), alignment: .top)
      .environmentObject(articleVM)
  }
}

struct ArticleViewPreview: PreviewProvider {
  static var previews: some View {
    ArticleView()
  }
}
