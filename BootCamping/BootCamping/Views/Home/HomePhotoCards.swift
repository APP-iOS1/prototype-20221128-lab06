//
//  HomePhotoCards.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/11/29.
//

import SwiftUI

struct HomePhotoCards: View {
    var homeImage = ["photoCard1", "photoCard2", "photoCard3", "1", "2", "3","4","5","6","7","8","9","10","11","12"]
    
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0..<homeImage.count, id: \.self) { index in
                    ZStack {
                        Image(homeImage[index])
                            .resizable()
                        .frame(width: 180, height: 193)
                        Rectangle()
                            .frame(width: 20,height: 20)
                            .cornerRadius(5)
                            .offset(x:-80,y:-86.5)
                            .opacity(0.6)

                        Text("\(index+1)")
                            .offset(x:-80,y:-86.5)
                            .foregroundColor(.white)
                            
                        
                    }
                    
                        
                }
            }
        }
        .padding(.horizontal,10)
    }

    }


struct HomePhotoCards_Previews: PreviewProvider {
    static var previews: some View {
        HomePhotoCards()
    }
}
