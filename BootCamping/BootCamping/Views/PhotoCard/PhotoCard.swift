//
//  PhotoCard.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/11/14.
//

import SwiftUI

struct PhotoCard: View {
    //    @State private var gridOn: Bool
    
    @State private var isRectangle: Bool = true
    @State private var isGrid: Bool = false
    @State private var isList: Bool = false
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button {
                    isRectangle = true
                    isGrid = false
                    isList = false
                } label: {
                    Image(systemName: "rectangle.portrait.fill")
                        .foregroundColor(isRectangle ? .indigo : .gray)
                        .font(.title3)

                }
                
                Button {
                    isRectangle = false
                    isGrid = true
                    isList = false
                } label: {
                    Image(systemName: "square.grid.2x2.fill")
                        .foregroundColor(isGrid ? .indigo : .gray)
                        .font(.title3)
                }
                
                Button {
                    isRectangle = false
                    isGrid = false
                    isList = true
                } label: {
                    Image(systemName: "list.bullet")
                        .foregroundColor(isGrid ? .indigo : .gray)
                        .font(.title3).bold()
                }
            }.padding(.trailing)
            
            ZStack {
                if isRectangle {
                    PhotoCardView()
                } else if isGrid {
                    gridView()
                } else if isList{
                    Text("리스트뷰 구현 예정")
//                    ListView()
                }
            }

            
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
