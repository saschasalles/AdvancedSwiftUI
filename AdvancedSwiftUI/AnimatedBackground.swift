//
//  AnimatedBackground.swift
//  AdvancedSwiftUI
//
//  Created by Sascha Sallès on 17/03/2021.
//

import SwiftUI

struct AnimatedBackground: View {
    @State private var start = UnitPoint(x: 0, y: -2)
    @State private var end = UnitPoint(x: 4, y: 0)
    let colors: [Color]

    let timer = Timer.publish(every: 1, on: .main, in: .default).autoconnect()
    var body: some View {
        LinearGradient(gradient: Gradient(colors: colors), startPoint: start, endPoint: end)
            .animation(Animation.easeInOut(duration: 6).repeatForever())
            .onReceive(timer, perform: { _ in

                self.start = UnitPoint(x: 4, y: 0)
                self.end = UnitPoint(x: 0, y: 2)
                self.start = UnitPoint(x: -4, y: 20)
                self.start = UnitPoint(x: 4, y: 0)
            })
    }
}

