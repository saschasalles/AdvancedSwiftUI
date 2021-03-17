//
//  InterfacingView.swift
//  AdvancedSwiftUI
//
//  Created by Sascha Sallès on 17/03/2021.
//

import SwiftUI

struct InterfacingView: View {
    var colors = [ Color(.systemTeal), Color(.systemGray), Color(.systemIndigo), Color(.systemPink), Color(.systemOrange)]
    var body: some View {
        VStack {
            MapView()
                .frame(maxWidth: .infinity, maxHeight: 250)

            VStack {
                Image("swift")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)

            }
            .background(BlurView(style: .regular))
            .cornerRadius(12)
            Spacer()

        }.background(AnimatedBackground(colors: self.colors))
        .ignoresSafeArea()
    }
}

struct InterfacingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            InterfacingView()
            InterfacingView()
        }
    }
}
