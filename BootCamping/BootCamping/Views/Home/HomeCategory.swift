//
//  HomeCategory.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/11/29.
//

import SwiftUI

struct HomeCategory: View {
    @Binding var selection: Int
    @EnvironmentObject var placeStore: PlaceStore
    
    var body: some View {
        VStack {
            HStack {
                Text("카테고리 검색")
                    .font(.title2)
                    .bold()
                Spacer()
            }
            .padding(.top, 10)
            
            HStack{
                Spacer()
                
                VStack {
                    Button {
                        selection = 4
                        placeStore.selectedCategory = "일반야영장"
                        
                    } label: {
                        Image("camping")
                            .resizable()
                            .frame(width: 65, height: 65)
                            .shadow(radius: 5)
                    }
                    Text("캠핑")
                    
                }
                Spacer()
                VStack {
                    Button {
                        selection = 4
                        placeStore.selectedCategory = "자동차야영장"
                    } label: {
                        Image("carbak2")
                            .resizable()
                            .frame(width: 65, height: 65)
                            .shadow(radius: 5)
                    }
                    Text("차박")
                }
                Spacer()
                VStack {
                    Button {
                        selection = 4
                        placeStore.selectedCategory = "카라반"
                    } label: {
                        Image("carbak")
                            .resizable()
                            .frame(width: 65, height: 65)
                            .shadow(radius: 5)
                    }
                    Text("카라반")
                    
                }
                Spacer()
                VStack {
                    Button {
                        selection = 4
                        placeStore.selectedCategory = "글램핑"
                    } label: {
                        Image("glamping")
                            .resizable()
                            .frame(width: 65, height: 65)
                            .shadow(radius: 5)
                    }
                    Text("글램핑")
                }
                Spacer()
            }.font(.callout)
        }
        
    }
}

struct HomeCategory_Previews: PreviewProvider {
    static var previews: some View {
        HomeCategory(selection: .constant(1))
    }
}
