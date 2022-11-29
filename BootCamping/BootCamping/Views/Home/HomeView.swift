//
//  HomeView.swift
//  BootCamping
//
//  Created by Donghoon Bae on 2022/11/14.
//

import SwiftUI

struct HomeView: View {
    @Binding var selection: Int
    @EnvironmentObject var placeStore: PlaceStore
    let images = ["car", "back", "camp", "gl"]
    
    var userNickName: String = "멋사"

    var body: some View {
        
        ScrollView {
            
            VStack{
                Group {
                    PhotoCardView()
                }.frame(height: 50)
                
                Group{      // 배너
                    VStack {
                        HStack {
                            Text("추천 게시글")
                                .font(.title)
                                .bold()
                                .padding(.leading)
                                .padding(.top)
                            Spacer()
                            NavigationLink {
                                MyPageView()
                            } label: {
                                Image(systemName: "person.fill")
                                    .foregroundColor(.indigo)
                                    .font(.title)
                            }
                            .padding(.top, 9)
                            .padding(.trailing, 18)
                            
                            
//                            Button {
//                                MyPageView()
//                            } label: {
//                                Image(systemName: "person.fill")
//                            .foregroundColor(.indigo)
//                            .font(.title)
//                            }

                            
                        }
                        TabView {
                            ForEach(images, id: \.self) { item in
                                Image(item)
                                    .resizable()
                                
                            }
                        }
                        .tabViewStyle(PageTabViewStyle())
                        .frame(width: 400,height: 300)
                    }
                }
                Spacer()
                Group{
                    HStack {
                        Text("카테고리")
                            .font(.title)
                            .bold()
                            .padding(.leading)
                        Spacer()
                    }
                    .padding(.top, 10)
                    HStack{     //카테고리
                        Spacer()
                        
                        VStack {
                            Button {
                                selection = 4
                                placeStore.selectedCategory = "camping"
                                
                            } label: {
                                Image("camping")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .shadow(radius: 5)
                            }
                            Text("캠핑")
                            
                        }
                        Spacer()
                        VStack {
                            Button {
                                selection = 4
                                placeStore.selectedCategory = "carbak"
                            } label: {
                                Image("carbak")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .shadow(radius: 5)
                            }
                            Text("차박")
                        }
                        Spacer()
                        VStack {
                            Button {
                                selection = 4
                                placeStore.selectedCategory = "backpack"
                            } label: {
                                Image("backpacking")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .shadow(radius: 5)
                            }
                            Text("백패킹")
                            
                        }
                        Spacer()
                        VStack {
                            Button {
                                selection = 4
                                placeStore.selectedCategory = "glamping"
                            } label: {
                                Image("glamping")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .shadow(radius: 5)
                            }
                            Text("글램핑")
                        }
                        Spacer()
                    }
                }
                Spacer()
                
                Group {     //추천여행지
                    VStack{
                        HStack{
                            Text("\(userNickName) 님, ")
                                .font(.title)
                                .bold()
                                .padding(.leading)
                            Spacer()
                        }
                        HStack {
                            Text("이번엔 어디로 떠나볼까요?")
                                .font(.title)
                                .bold()
                                .padding(.leading)
                            Spacer()
                        }
                    }.padding(.top, 10)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            let travleImages = ["jeju","gangwon","busan","gwangju", "Gyeonggi"]
                            let travlenames = ["제주도","강원도","부산","광주", "경기도"]
                            ForEach(0..<travleImages.count, id: \.self) {
                                idx in
                                ZStack {
                                    Image(travleImages[idx])
                                        .resizable()
                                        .frame(width: 95, height: 95)
                                        .clipShape(Circle())
                                    
                                    Text(travlenames[idx])
                                        .font(.title3)
                                        .bold()
                                        .foregroundColor(.white)
                                }
                                
                            }
                            
                        }.padding(.horizontal, 10.0)
                    }
                    
                    
                }
                
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeView(selection: .constant(1))
    }
}

