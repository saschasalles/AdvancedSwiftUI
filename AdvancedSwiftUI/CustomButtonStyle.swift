//
//  CustomButtonStyle.swift
//  AdvancedSwiftUI
//
//  Created by Sascha Sallès on 17/03/2021.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(10)
            .background(
            RoundedRectangle(cornerRadius: 14, style: .continuous)
                .fill(configuration.isPressed ? Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)) : Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
        )
            .scaleEffect(configuration.isPressed ? 0.7 : 1)
            .foregroundColor(.white)
            .animation(.spring())
    }


}
