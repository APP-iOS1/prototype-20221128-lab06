//
//  PlaceView.swift
//  BootCamping
//
//  Created by Donghoon Bae on 2022/11/14.
//

import SwiftUI

struct PlaceView: View {
    
    @EnvironmentObject var placeStore: PlaceStore
    var fecthData: FetchData = FetchData()
    
    @State var page: Int = 1
    @State private var isLoading: Bool = false
    
    //    let url: String = "https://apis.data.go.kr/B551011/GoCamping/basedList?numOfRows=15&pageNo=1&MobileOS=IOS&MobileApp=BootCamping&serviceKey=1L%2BOYunfglS6UkMxXuvlyqHspdv1jlOG1y6KHTwm2iYU6PGtKGH1jv6bORueQEwQBwzbUXzaukBp2mGzabnQ%2Bw%3D%3D&_type=json"
    
    var body: some View {
        VStack {
            HStack {
                Button { placeStore.selectedCategory = "all" } label: {
                    Text("#전체보기").padding(7)
                }
                .foregroundColor(placeStore.selectedCategory == "all" ? .white : .black)
                .background(placeStore.selectedCategory == "all" ? Color.accentColor : .white)
                .cornerRadius(10)
                
                Button { placeStore.selectedCategory = "일반야영장" } label: {
                    Text("#캠핑").padding(7)
                }
                .foregroundColor(placeStore.selectedCategory == "일반야영장" ? .white : .black)
                .background(placeStore.selectedCategory == "일반야영장" ? Color.accentColor : .white)
                .cornerRadius(10)
                
                Button { placeStore.selectedCategory = "자동차야영장" } label: {
                    Text("#차박").padding(5)
                }
                .foregroundColor(placeStore.selectedCategory == "자동차야영장" ? .white : .black)
                .background(placeStore.selectedCategory == "자동차야영장" ? Color.accentColor : .white)
                .cornerRadius(10)
                
                Button { placeStore.selectedCategory = "카라반" } label: {
                    Text("#카라반").padding(7)
                }
                .foregroundColor(placeStore.selectedCategory == "카라반" ? .white : .black)
                .background(placeStore.selectedCategory == "카라반" ? Color.accentColor : .white)
                .cornerRadius(10)
                
                Button { placeStore.selectedCategory = "글램핑" } label: {
                    Text("#글램핑").padding(7)
                }
                .foregroundColor(placeStore.selectedCategory == "글램핑" ? .white : .black)
                .background(placeStore.selectedCategory == "글램핑" ? Color.accentColor : .white)
                .cornerRadius(10)
            }
            .padding(.vertical)
            
            ScrollView {
                
                LazyVStack(alignment: .leading) {
                    ForEach(Array(placeStore.returnPlaces().enumerated()), id: \.offset) { (index, place) in
                        NavigationLink(destination: PlaceDetailView(places: place)) {
                            PlaceCardView(places: place)
                                .padding(.horizontal, 10)
                        }
                        .onAppear {
                            if index == placeStore.returnPlaces().count - 1 {
                                Task {
                                    page += 1
                                    isLoading = true
                                    try await Task.sleep(until: .now + .seconds(1), clock: .continuous)
                                    placeStore.places.append(contentsOf: try await fecthData.fetchData(page: page))
                                    isLoading = false
                                }
                            }
                        }
                    }
                }
                if isLoading == true {
                    ProgressView().frame(height: 100)
                }
            }
            .onAppear {
                Task {
                    isLoading = true
                    placeStore.places.append(contentsOf: try await fecthData.fetchData(page: page))
                }
            }
//            .background(Color(hue: 0.503, saturation: 0.0, brightness: 0.909))
        }
        
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Text("플레이스")
                    .font(.largeTitle)
                    .bold()
                    .accessibilityAddTraits(.isHeader)
            }
            
        }
    }
}

struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            PlaceView()
                .environmentObject(PlaceStore())
        }
    }
}
