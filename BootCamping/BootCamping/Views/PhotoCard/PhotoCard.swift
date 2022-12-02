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
    @ObservedObject var listStore: ListStore = ListStore()
    
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
                        .foregroundColor(isRectangle ? .accentColor : .gray)
                        .font(.title3)

                }
                
                Button {
                    isRectangle = false
                    isGrid = true
                    isList = false
                } label: {
                    Image(systemName: "square.grid.2x2.fill")
                        .foregroundColor(isGrid ? .accentColor : .gray)
                        .font(.title3)
                }
                
                Button {
                    isRectangle = false
                    isGrid = false
                    isList = true
                } label: {
                    Image(systemName: "list.bullet")
                        .foregroundColor(isList ? .accentColor : .gray)
                        .font(.title3).bold()
                }
            }.padding(.trailing)
            
            ZStack {
                if isRectangle {
                    PhotoCardView(listStore: listStore)
                } else if isGrid {
                    gridView()
                } else if isList{
                    ListView(listStore: ListStore())
                }
            }

            
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Text("내 추억")
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
        //                        .foregroundColor(.accentColor)
        //                }))
    }
}

struct PhotoCard_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCard()
    }
}
