//
//  PlaceView.swift
//  BootCamping
//
//  Created by Donghoon Bae on 2022/11/14.
//

import SwiftUI

struct PlaceView: View {
    
    @EnvironmentObject var placeStore: PlaceStore
    
    var body: some View {
        VStack {
            HStack {
                Button { placeStore.selectedCategory = "all" } label: {
                    Text("#전체보기").padding(7)
                }
                .foregroundColor(placeStore.selectedCategory == "all" ? .white : .black)
                .background(placeStore.selectedCategory == "all" ? .indigo : .white)
                .cornerRadius(10)
                
                Button { placeStore.selectedCategory = "camping" } label: {
                    Text("#캠핑").padding(7)
                }
                .foregroundColor(placeStore.selectedCategory == "camping" ? .white : .black)
                .background(placeStore.selectedCategory == "camping" ? .indigo : .white)
                .cornerRadius(10)
                
                Button { placeStore.selectedCategory = "carbak" } label: {
                    Text("#차박").padding(5)
                }
                .foregroundColor(placeStore.selectedCategory == "carbak" ? .white : .black)
                .background(placeStore.selectedCategory == "carbak" ? .indigo : .white)
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
            
            ScrollView {
                
                VStack(alignment: .leading) {
                    ForEach(placeStore.returnPlaces()) { place in
                        NavigationLink(destination: PlaceDetailView(places: place)) {
                            PlaceCardView(places: place)
                                .padding(.horizontal, 10)
                        }
                    }
                }
            }
            .background(Color(hue: 0.503, saturation: 0.0, brightness: 0.909))
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

struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceView().environmentObject(PlaceStore())
    }
}
