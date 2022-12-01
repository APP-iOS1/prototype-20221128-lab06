//
//  SearchingMapView.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/12/01.
//

import SwiftUI
import MapKit

struct AnnotatedItem1: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}

struct SearchingMapView: View {
    
    @State private var annotatedItem: [AnnotatedItem1] = []
    
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.5, longitude: 126.9),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )
    
    var places: Item
    
    var body: some View {
        VStack {

            Map(coordinateRegion: $region, interactionModes: [] ,annotationItems: annotatedItem) { item in
                MapMarker(coordinate: item.coordinate, tint: .blue)
            }
            .frame(width: 150, height: 150)
            .cornerRadius(5)
            .padding(.horizontal, 3)
            Text(String(Array(places.facltNm).filter { !"(주)".contains($0) }))
                .font(.subheadline)
        }
        .onAppear {
                region.center = CLLocationCoordinate2D(latitude: Double(places.mapY)!, longitude: Double(places.mapX)!)
                annotatedItem.append(AnnotatedItem1(name: places.facltNm, coordinate: CLLocationCoordinate2D(latitude: Double(places.mapY)!, longitude: Double(places.mapX)!)))
        }
    }
}

//struct SearchingMapView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchingMapView(placeStore: placeStore.places.first!)
//    }
//}
