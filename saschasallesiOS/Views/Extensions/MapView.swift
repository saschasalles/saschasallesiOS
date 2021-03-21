//
//  MapView.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 07/03/2021.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
  func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
    let mapView = MKMapView()
    mapView.delegate = context.coordinator
    return mapView
  }

  func updateUIView(_ view: MKMapView, context: UIViewRepresentableContext<MapView>) {
    let coords = CLLocationCoordinate2D(latitude: 44.85722567609211, longitude: -0.5617902321316085)

    // set span (radius of points)
    let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)

    // set region
    let region = MKCoordinateRegion(center: coords, span: span)

    // set the view
    view.setRegion(region, animated: true)
  }

  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }

  typealias Context = UIViewRepresentableContext<Self>
}

class Coordinator: NSObject, MKMapViewDelegate {
  var parent: MapView

  func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
    let view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: nil)
    view.canShowCallout = true
    return view
  }

  init(_ parent: MapView) {
    self.parent = parent
  }
}
