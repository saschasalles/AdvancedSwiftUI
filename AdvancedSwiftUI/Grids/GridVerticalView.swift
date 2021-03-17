//
//  GridView.swift
//  AdvancedSwiftUI
//
//  Created by Sascha Sallès on 17/03/2021.
//

import SwiftUI

struct GridVerticalView: View {

    private var groupNames = ["Alternants", "Apple Lab Confiné ", "Web M1", "Projets Apple", "INFO B3 C Suivi de projet", "Groupe Vapor", "Groupe CloudKit", "Challenge 48h", "Yann et Antoine", "App Vidéos"]

    private var colors: [Color] = [.yellow, .purple, .green]

    private var gridItemLayout = [
        GridItem(.adaptive(minimum: 120)),
        GridItem(.adaptive(minimum: 120))]


    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItemLayout, alignment: .center, spacing: 20) {
                ForEach(0..<groupNames.count) { value in
                    NavigationLink(destination: Text("Message Group"), label: {
                        Color(.systemIndigo)
                            .overlay(
                            Text(groupNames[value])
                                .foregroundColor(.white)
                        )
                            .contentShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                            .frame(height: 150)
                            .cornerRadius(10)
                            .contextMenu {
                            Button {
                            } label: {
                                Label(
                                    title: { Text("New Audio Call") },
                                    icon: { Image(systemName: "phone.fill")
                                    }
                                )
                            }
                            Button {
                            } label: {
                                Label(
                                    title: { Text("New Video Call") },
                                    icon: { Image(systemName: "video.fill")
                                    }
                                )
                            }
                            Button {
                            } label: {
                                Label(
                                    title: { Text("Delete Group") },
                                    icon: { Image(systemName: "trash.fill")
                                    }
                                )
                            }

                        }
                    }).buttonStyle(PlainButtonStyle())
                        .padding(.horizontal, 5)
                }
            }.padding(.horizontal, 10)
        }
    }
}


struct GridVerticalView_Previews: PreviewProvider {
    static var previews: some View {
        GridVerticalView()
    }
}
