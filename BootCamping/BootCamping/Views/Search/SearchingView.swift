//
//  SearchingView.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/12/01.
//

import SwiftUI
import MapKit

struct SearchingView: View {
    @ObservedObject var placeStore: PlaceStore
    
    var camper = ["_chasomin","chohh02","JJ_ang","outdoorlife.prim","thekoon_","bestagrammm"]
    
    @State private var searchText = ""
    
    var body: some View {
        ScrollView {
            VStack {
                SearchingPhotoView()
                Divider()
                
                //캠핑장 맵뷰
                HStack {
                    Text("플레이스 검색결과")
                        .font(.title2)
                        .bold()
                        .padding()
                    Spacer()
                }
//                .padding(.vertical, -5)
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(placeStore.places, id: \.self) { place in
                            SearchingMapView(places: place)
                        }
                    }
                }
                .padding(.bottom, 5)
                Divider()
                
                //캠퍼 전체 검색결과
                SearchingCamperView()
                Divider()
                Spacer()
                
            }
        }
        .onAppear {
            Task {
                placeStore.places.append(contentsOf: try await FetchData().fetchData(page: 1))
            }
        }

    }
}

struct SearchingView_Previews: PreviewProvider {
    static var previews: some View {
        SearchingView(placeStore: PlaceStore())
    }
}
