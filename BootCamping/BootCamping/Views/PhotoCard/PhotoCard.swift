//
//  PhotoCard.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/11/14.
//

import SwiftUI

struct PhotoCard: View {
    //    @State private var gridOn: Bool
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button {
                } label: {
                    Image(systemName: "rectangle.portrait.fill")
                        .foregroundColor(.indigo)
                        .font(.title3)
                }
                
                Button {
                } label: {
                    Image(systemName: "square.grid.2x2.fill")
                        .foregroundColor(.gray)
                        .font(.title3)
                }
                
                Button {
                } label: {
                    Image(systemName: "list.bullet")
                        .foregroundColor(.gray)
                        .font(.title3).bold()
                }
            }.padding(.trailing)
            
            //            ScrollView(.horizontal, showsIndicators: false){
            //                HStack {
            //                    NavigationLink {
            //                        PhotoDetailView()
            //                    } label: {
            //                        ZStack(alignment: .leading) {
            //                            Image("photoCard1")
            //                                .resizable()
            //                                .aspectRatio(contentMode: .fill)
            //                                .frame(width: 300, height: 600)
            //                                .cornerRadius(20)
            //                            PhotoMainStory()
            //                                .offset(y: -150)
            //                        }
            //                        .shadow(radius: 3)
            //                        .padding()
            //                    }
            //
            //                    NavigationLink {
            //                        PhotoDetailView()
            //                    } label: {
            //                        ZStack(alignment: .leading) {
            //                            Image("photoCard2")
            //                                .resizable()
            //                                .aspectRatio(contentMode: .fill)
            //                                .frame(width: 300, height: 600)
            //                                .cornerRadius(20)
            //                            PhotoMainStory2()
            //                                .offset(y: -150)
            //                        }
            //                        .shadow(radius: 3)
            //                    }
            //
            //
            //                    NavigationLink {
            //                        PhotoDetailView()
            //                    } label: {
            //                        ZStack(alignment: .leading) {
            //                            Image("photoCard3")
            //                                .resizable()
            //                                .aspectRatio(contentMode: .fill)
            //                                .frame(width: 300, height: 600)
            //                                .cornerRadius(20)
            //                            PhotoMainStory3()
            //                                .offset(y: -150)
            //                        }
            //                        .shadow(radius: 3)
            //                        .padding()
            //                    }
            //                }
            //            }
        PhotoCardView()
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Text("추억")
                    .font(.largeTitle)
                    .bold()
                    .accessibilityAddTraits(.isHeader)
            }
        }
        .navigationBarItems(trailing: NavigationLink {
            AddPhotoCard()
        } label: {
            Text("글쓰기")
        })
        
        //                .navigationTitle("추억")
        //                .navigationBarItems(trailing: NavigationLink(destination: AddPhotoCard(), label: {
        //                    Text("추억 더하기")
        //                        .foregroundColor(.indigo)
        //                }))
    }
}

struct PhotoMainStory: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("2022.11.10")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.vertical, 1.0)
                
                Text("북분솔밭캠핑장")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.vertical, 3.0)
                
                HStack {
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star")
                }
                .font(.title3)
                .bold()
                .foregroundColor(.white)
                .padding(.horizontal)
                .padding(.vertical, 5.0)
                
                Text("여자친구와 주말 힐링 데이트")
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.vertical, 15.0)
                
            }
        }
    }
}

struct PhotoMainStory2: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("2021.11.29")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.vertical, 1.0)
                
                Text("주전패밀리캠핑장")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.vertical, 3.0)
                
                HStack {
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                }
                .font(.title3)
                .bold()
                .foregroundColor(.white)
                .padding(.horizontal)
                .padding(.vertical, 5.0)
                
                Text("친구들과 1년만에 캠핑!")
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.vertical, 15.0)
            }
        }
    }
}

struct PhotoMainStory3: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("2021.8.25")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.vertical, 1.0)
                
                Text("애플오토캠핑장")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.vertical, 3.0)
                
                HStack {
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                }
                .font(.title3)
                .bold()
                .foregroundColor(.white)
                .padding(.horizontal)
                .padding(.vertical, 5.0)
                
                Text("가족들과 즐거운 캠핑!")
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.vertical, 15.0)
            }
        }
    }
}

struct PhotoCard_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCard()
    }
}
