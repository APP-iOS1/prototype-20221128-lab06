//
//  PlaceDetailView.swift
//  BootCamping
//
//  Created by Donghoon Bae on 2022/11/14.
//

import SwiftUI

struct PlaceDetailView: View {
    
    @State private var isFavorite: Bool = false
    
    var places: Item
    
    var body: some View {
        
        let images = ["jeju1", "jeju2", "jeju3"]
        
        ZStack {
            ScrollView {
                TabView {
                    ForEach(images, id: \.self) { item in
                        Image(item).resizable()
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .frame(width: 400,height: 300)
                
                VStack(alignment: .leading, spacing: 8) {
                    
                    Group {
                        Text("#글램핑").foregroundColor(.indigo)
                        
                        Text("\(places.facltNm)")
                            .font(.title)
                            .kerning(-0.5)
                            .padding(.vertical, 3)
                        
                            Text("\(Image(systemName: "star.fill")) 5.0점 (후기 4개)")
                                .font(.footnote)
                        
                        
                        HStack {
                            Text("\(places.addr1)")
                                .font(.footnote)
                                .foregroundColor(.gray)
                            Spacer()
                            NavigationLink { Text("MapView 지원 예정...\ncoming soon") } label: {
                                Text("\(Image(systemName: "map.fill")) 위치 보기")
                                    .font(.footnote)
                                    .foregroundColor(.indigo)
                            }
                        }
                        .padding(.bottom, 20)
                        
                        Text("\(places.lineIntro)").lineSpacing(7).font(.subheadline)
 
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    Group {
                        Text("편의시설 및 서비스").font(.callout).bold()
                        Image("facilities")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    Group {
                        Text("리뷰 모아보기").font(.callout).bold()
                        Spacer()
                        HStack {
                            Spacer()
                            VStack(alignment: . center) {
                                Text("현재 작성된 리뷰가 없어요.")
                                Text("첫 리뷰의 주인공이 되어보시는건 어떨까요?\n")
                            }.foregroundColor(.gray).font(.callout)
                            Spacer()
                        }
                    }
                }
                .padding(.horizontal, 25)
            }.ignoresSafeArea(.all, edges: .top)
            
            ZStack {
                Link(destination: URL(string: "https://map.naver.com")!) {
                    Text("예약\n하기")
                        .foregroundColor(.white)
                        .padding()
                        .background(.indigo)
                        .clipShape(Circle())
                }
            }.offset(x: 140, y: 280)

        }
        .navigationBarItems(trailing: Button {
            isFavorite.toggle()
        } label: {
            Image(systemName: isFavorite ? "bookmark.fill" : "bookmark").foregroundColor(isFavorite ? .yellow : .white).opacity(0.8)
                }
                )

    }

}

//struct PlaceDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlaceDetailView(places: PlaceStore().places.first!)
//    }
//}
