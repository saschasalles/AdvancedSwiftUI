//
//  ContentView.swift
//  AdvancedSwiftUI
//
//  Created by Sascha Sallès on 17/03/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var simpleRotation = 0.0
    @State private var rotation3D = 0.0
    @State private var scale = 1
    let step = 1
    let range = 1...5

    var body: some View {
        NavigationView {
            List {
                // Rotation Effect
                // https://www.hackingwithswift.com/quick-start/swiftui/how-to-rotate-a-view

                Section(header: Text("2D Rotation Effect")) {
                    Button(action: {
                        self.simpleRotation += 90
                    }, label: {
                        Text("Apply")
                    })
                    Image("swift")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        .rotationEffect(.degrees(self.simpleRotation))
                }

                // 3D Rotation Effect
                // https://swiftui-lab.com/swiftui-animations-part2/

                Section(header: Text("3D Rotation Effect")) {
                    Button(action: {

                        withAnimation(.easeOut){
                            self.rotation3D += 360
                        }

                    }, label: {
                        Text("Apply")
                    }).buttonStyle(CustomButtonStyle())

                    Image("swift")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        .rotation3DEffect(.degrees(self.rotation3D), axis: (x: 0, y: 1, z: 0))
                }

                Section(header: Text("Scale Effect")) {
                    withAnimation(.easeOut) {
                        Stepper(value: $scale, in: range, step: step) {
                            Text("Current: \(scale)")
                        }
                    }

                    Image("swift")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        .scaleEffect(CGFloat(self.scale))
                }

                NavigationLink(destination: GridVerticalView()) {
                    Text("LazyVGrid")
                }

                NavigationLink(destination: GridHorizontalView()) {
                    Text("LazyHGrid")
                }

                NavigationLink(destination: InterfacingView()) {
                    Text("Interfacing UIKit")
                }




            }.listStyle(InsetGroupedListStyle())
                .navigationBarTitle("Effects")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
