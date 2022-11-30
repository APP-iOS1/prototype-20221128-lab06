//
//  PhotoCardView.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/11/29.
//

import SwiftUI

struct PhotoCardView: View {
    var homePhotoCards = ["photoCard1", "photoCard2", "photoCard3", "photoCard3"]
    
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
                
                NavigationLink {
                    PhotoDetailView()
                } label: {
                    ZStack(alignment: .leading) {
                        Image("photoCard1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300, height: 600)
                            .cornerRadius(20)
                        PhotoMainStory()
                            .offset(y: -150)
                    }
                    .shadow(radius: 3)
                    .padding()
                }
                
                NavigationLink {
                    PhotoDetailView()
                } label: {
                    ZStack(alignment: .leading) {
                        Image("photoCard2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300, height: 600)
                            .cornerRadius(20)
                        PhotoMainStory2()
                            .offset(y: -150)
                    }
                    .shadow(radius: 3)
                }
                
                
                NavigationLink {
                    PhotoDetailView()
                } label: {
                    ZStack(alignment: .leading) {
                        Image("photoCard3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300, height: 600)
                            .cornerRadius(20)
                        PhotoMainStory3()
                            .offset(y: -150)
                    }
                    .shadow(radius: 3)
                    .padding()
                }
            }
        }
    }
}

struct PhotoCardView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCardView()
    }
}
