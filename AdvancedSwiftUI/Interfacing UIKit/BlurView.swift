//
//  BlurView.swift
//  AdvancedSwiftUI
//
//  Created by Sascha Sallès on 17/03/2021.
//

// Interfacing UIKit

import Foundation
import SwiftUI
import UIKit

struct BlurView: UIViewRepresentable {

    typealias UIViewType = UIVisualEffectView

    let style: UIBlurEffect.Style

    init(style: UIBlurEffect.Style = .systemMaterial) {
        self.style = style
    }

    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: self.style))
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: self.style)
    }
}
