//
//  PhotoCardView.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/11/29.
//

import SwiftUI

struct PhotoCardView: View {
    var homePhotoCards = ["photoCard1", "photoCard2", "photoCard3", "photoCard3"]
    
    @ObservedObject var listStore: ListStore
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
//                ForEach(homePhotoCards, id: \.self) { photo in
//                    NavigationLink {
//                        PhotoDetailView()
//                    } label: {
//                        ZStack(alignment: .leading) {
//                            Image(photo)
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width: 300, height: 600)
//                                .cornerRadius(20)
//                        }
//                        .shadow(radius: 3)
//                        .padding(.leading, 5)
//                        .padding(.vertical, 10)
//                        .padding(.trailing, 10)
//                    }
//                }
                
                ForEach(listStore.listData, id: \.id) { item in
                    
                    NavigationLink {
                        PhotoDetailView(listStruct: item)
                    } label: {
                        ZStack(alignment: .leading) {
                            item.image.first?.image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 300, height: 600)
                                .cornerRadius(20)
                            PhotoMainStory(listStruct: item)
                                .offset(y: -150)
                        }
                        .shadow(radius: 3)
                        .padding()
                    }
                }
                
//                NavigationLink {
//                    PhotoDetailView()
//                } label: {
//                    ZStack(alignment: .leading) {
//                        Image("photoCard2")
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: 300, height: 600)
//                            .cornerRadius(20)
//                        PhotoMainStory2()
//                            .offset(y: -150)
//                    }
//                    .shadow(radius: 3)
//                }
//
//
//                NavigationLink {
//                    PhotoDetailView()
//                } label: {
//                    ZStack(alignment: .leading) {
//                        Image("photoCard3")
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: 300, height: 600)
//                            .cornerRadius(20)
//                        PhotoMainStory3()
//                            .offset(y: -150)
//                    }
//                    .shadow(radius: 3)
//                    .padding()
//                }
            }
        }
    }
}

struct PhotoMainStory: View {
    var listStruct: ListSturct
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text(listStruct.date)
                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.vertical, 1.0)
                
                Text(listStruct.name)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.vertical, 3.0)
                
                Text(listStruct.title)
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.vertical, 15.0)
                
            }
        }
    }
}

struct PhotoCardView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCardView(listStore: ListStore())
    }
}
