//
//  HomePhotoCards.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/11/29.
//

import SwiftUI

struct HomePhotoCards: View {
    var body: some View {
                var homePhotoCards = ["photoCard1", "photoCard2", "photoCard3", "photoCard3"]
        
//        var homePhotoCards = [String]()
        
        ScrollView(.horizontal, showsIndicators: false){
            ZStack {
                HStack {
                    if homePhotoCards.isEmpty {
                        HStack {
                            Rectangle()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 300)
                                .cornerRadius(20)
                                .foregroundColor(.secondary)
                                .opacity(0.3)
                                .overlay {
                                    NavigationLink {
                                        AddPhotoCard()
                                    } label: {
                                        Image(systemName: "plus.circle").font(.largeTitle)
                                            .opacity(0.5)
                                    }
                                }
                                .padding(.leading, 20)
                            
                            
                            
                            Text("당신의 \n추억을 \n채워보세요")
                                .font(.title2)
                                .bold()
                                .opacity(0.5)
                                .padding(.leading, 30)
                        }
                    }
                    
                    else {
                        HStack {
                            ForEach(homePhotoCards, id: \.self) { photo in
                                NavigationLink {
                                    PhotoDetailView()
                                } label: {
                                    ZStack(alignment: .leading) {
                                        Image(photo)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 150, height: 300)
                                            .cornerRadius(20)
                                    }
                                    .shadow(radius: 3)
                                    .padding(.leading, 5)
                                    .padding(.vertical, 10)
                                    .padding(.trailing, 10)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct HomePhotoCards_Previews: PreviewProvider {
    static var previews: some View {
        HomePhotoCards()
    }
}
