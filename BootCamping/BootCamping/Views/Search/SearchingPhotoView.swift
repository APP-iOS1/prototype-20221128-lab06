//
//  SearchingPhotoView.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/12/01.
//

import SwiftUI

struct SearchingPhotoView: View {
    var body: some View {
                var homePhotoCards = ["photoCard1", "photoCard2", "photoCard3", "1", "2", "3"]
    
            VStack {
                HStack {
                    Text("포토 검색결과")
                        .font(.title2)
                        .bold()
                        .padding()
                    Spacer()
                }
                .padding(.bottom, -10)
                ScrollView(.horizontal, showsIndicators: false){
                ZStack {
                    HStack {
                        if homePhotoCards.isEmpty {
                            HStack {
                                Rectangle()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 100, height: 100)
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
//                                        PhotoDetailView(listStruct: photo)
                                    } label: {
                                        ZStack(alignment: .leading) {
                                            Image(photo)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 150, height: 150)
                                                .cornerRadius(5)
                                        }
//                                        .shadow(radius: 3)
                                        .padding(.leading, 2)
                                        .padding(.vertical, 10)
                                        .padding(.trailing, 2)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct SearchingPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        SearchingPhotoView()
    }
}
