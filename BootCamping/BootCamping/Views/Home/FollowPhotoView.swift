//
//  FollowPhotoView.swift
//  BootCamping
//
//  Created by 차소민 on 2022/12/01.
//

import SwiftUI

struct FollowPhotoView: View {
    var homeImage = ["a","b","c","d","e","f","g","h","i","j","k","l"]
    
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    var camper = ["_chasomin","chohh02","JJ_ang","outdoorlife.prim","thekoon_","bestagrammm"]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading){
                    HStack {
                        Text("팔로우중인 캠퍼")
                            .font(.headline)
                            .padding(.leading)
                        Spacer()
                        NavigationLink(destination: FollowListView()) {
                            Text("더보기")
                                .padding(.trailing)
                        }
                    }
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(camper, id: \.self) { item in
                                VStack{
                                    Image(item)
                                        .resizable()
                                        .frame(width: 80,height: 80)
                                        .cornerRadius(50)
                                    Text(item)
                                        .font(.caption)
                                        .frame(width: 80)
                                        .lineLimit(1)
                                    
                                }
                            }
                        }
                    }
                    .padding(.bottom,10)
                }
                LazyVGrid(columns: columns) {
                    ForEach(0..<homeImage.count, id: \.self) { index in
                        ZStack {
                            Image(homeImage[index])
                                .resizable()
                                .frame(width: 198, height: 198)
                                .padding(.bottom, -5)
                            
                            
                        }
                        
                        
                    }
                }
            }
        }
    }
    
}

struct FollowPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        FollowPhotoView()
    }
}
