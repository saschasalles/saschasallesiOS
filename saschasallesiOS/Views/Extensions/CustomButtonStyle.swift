//
//  CustomButtonStyle.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 07/03/2021.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
            .blur(radius: configuration.isPressed ? 0.2 : 0)
            .animation(.easeOut(duration: 0.3))
    }
}
