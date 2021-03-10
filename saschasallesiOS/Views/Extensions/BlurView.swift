//
//  BlurView.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 10/03/2021.
//

import Foundation
import SwiftUI
import  UIKit

struct BlurView: UIViewRepresentable {
    typealias UIViewType = UIVisualEffectView
    let style: UIBlurEffect.Style
    
    init(style: UIBlurEffect.Style = .systemMaterial) {
        self.style = style
    }
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style:self.style))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: self.style)
    }
}
