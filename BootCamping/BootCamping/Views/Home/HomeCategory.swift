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
                Text("플레이스")
                    .font(.title)
                    .bold()
                    .padding(.leading, 7)
                Spacer()
            }
            .padding(.top, 10)
            
            HStack{
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
        
    }
}

struct HomeCategory_Previews: PreviewProvider {
    static var previews: some View {
        HomeCategory(selection: .constant(1))
    }
}
