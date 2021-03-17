//
//  MapView.swift
//  AdvancedSwiftUI
//
//  Created by Sascha Sallès on 17/03/2021.
//
// https://www.hackingwithswift.com/books/ios-swiftui/advanced-mkmapview-with-swiftui

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        let mapView = MKMapView()
        return mapView
    }

    func updateUIView(_ view: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let coords = CLLocationCoordinate2D(latitude: 44.85722567609211, longitude: -0.5617902321316085)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: coords, span: span)
        view.setRegion(region, animated: true)
    }
}


