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
//    let url: String = "https://apis.data.go.kr/B551011/GoCamping/searchList?numOfRows=15&pageNo=1&MobileOS=IOS&MobileApp=bootcamping&serviceKey=1L%2BOYunfglS6UkMxXuvlyqHspdv1jlOG1y6KHTwm2iYU6PGtKGH1jv6bORueQEwQBwzbUXzaukBp2mGzabnQ%2Bw%3D%3D&keyword=글램핑&_type=json"
    let url: String = "https://apis.data.go.kr/B551011/GoCamping/basedList?serviceKey=NqaJrr6QywR%2FHR1aHsIzjVnRWbbZ0QF1cJGSCR8HufGaxum3nJWAYZ3kwYqe8vcwOBVBRf8bL2pWS%2BikwUKF3g%3D%3D&numOfRows=10&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json"
    
    var body: some View {
        VStack {
            HStack {
                Button { placeStore.selectedCategory = "all" } label: {
                    Text("#전체보기").padding(7)
                }
                .foregroundColor(placeStore.selectedCategory == "all" ? .white : .black)
                .background(placeStore.selectedCategory == "all" ? .indigo : .white)
                .cornerRadius(10)
                
                Button { placeStore.selectedCategory = "야영장" } label: {
                    Text("#캠핑").padding(7)
                }
                .foregroundColor(placeStore.selectedCategory == "야영장" ? .white : .black)
                .background(placeStore.selectedCategory == "야영장" ? .indigo : .white)
                .cornerRadius(10)
                
                Button { placeStore.selectedCategory = "자동차야영장" } label: {
                    Text("#차박").padding(5)
                }
                .foregroundColor(placeStore.selectedCategory == "자동차야영장" ? .white : .black)
                .background(placeStore.selectedCategory == "자동차야영장" ? .indigo : .white)
                .cornerRadius(10)
                
                Button { placeStore.selectedCategory = "backpack" } label: {
                    Text("#백패킹").padding(7)
                }
                .foregroundColor(placeStore.selectedCategory == "backpack" ? .white : .black)
                .background(placeStore.selectedCategory == "backpack" ? .indigo : .white)
                .cornerRadius(10)
                
                Button { placeStore.selectedCategory = "glamping" } label: {
                    Text("#글램핑").padding(7)
                }
                .foregroundColor(placeStore.selectedCategory == "glamping" ? .white : .black)
                .background(placeStore.selectedCategory == "glamping" ? .indigo : .white)
                .cornerRadius(10)
            }
            .padding(.vertical)
            Button {
                Task {
                    placeStore.places = try await fecthData.fetchData(url: url)
                    print("task")
                }
            } label: {
                Text("data")
            }
            
            ScrollView {
                
                VStack(alignment: .leading) {
                    ForEach(placeStore.returnPlaces(), id: \.self) { place in
                        NavigationLink(destination: PlaceDetailView(places: place)) {
                            PlaceCardView(places: place)
                                .padding(.horizontal, 10)
                        }
                    }
                }
            }
            .background(Color(hue: 0.503, saturation: 0.0, brightness: 0.909))
        }
        .onAppear {
            Task {
                placeStore.places = try await fecthData.fetchData(url: url)
            }
        }

        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Text("장소")
                    .font(.largeTitle)
                    .bold()
                    .accessibilityAddTraits(.isHeader)
            }
        }
        .navigationBarItems(trailing: Button {} label: {
            Image(systemName: "magnifyingglass").foregroundColor(.black)
        }
        )
    }
}

//struct PlaceView_Previews: PreviewProvider {
//    static var previews: some View {
//        
//        PlaceView()
//            .environmentObject(PlaceStore(places: placeStore.places))
//    }
//}
