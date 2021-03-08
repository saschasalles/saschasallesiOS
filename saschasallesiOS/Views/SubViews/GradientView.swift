//
//  GradientView.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 08/03/2021.
//

import SwiftUI

struct GradientView<Content>: View where Content: View {

    let content: () -> Content

    var body: some View {
        VStack(alignment: .center) {
            content()
        }
            .background(
            LinearGradient(gradient:
                            Gradient(colors: [Color(.systemBackground), Color(.systemGray6)]), startPoint: .top, endPoint: .bottom))
            .animation(.easeOut(duration: 0.15))
    }

    init(@ViewBuilder _ content: @escaping () -> Content) {
        self.content = content
    }
}
