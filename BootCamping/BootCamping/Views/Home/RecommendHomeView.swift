//
//  RecommendHomeView.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/11/29.
//

import SwiftUI

struct RecommendHomeView: View {
    @Binding var userNickName: String
    
    var body: some View {
        Group {     //추천여행지
            VStack{
//                HStack{
//                    Text("\(userNickName) 님, ")
//                        .font(.title2)
//                        .bold()
//                        .padding(.leading)
//                    Spacer()
//                }
                HStack {
                    Text("장소별 검색")
                        .font(.title2)
                        .bold()
                        .padding(.leading)
                    Spacer()
                }
            }
            .padding(.top, 10)
            .padding(.leading, 3)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    let travleImages = ["jeju","gangwon","busan","gwangju", "Gyeonggi"]
                    let travlenames = ["제주도","강원도","부산","광주", "경기도"]
                    ForEach(0..<travleImages.count, id: \.self) {
                        idx in
                        ZStack {
                            Image(travleImages[idx])
                                .resizable()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                            
                            Text(travlenames[idx])
                                .font(.headline)
                                .bold()
                                .foregroundColor(.white)
                        }
                        
                    }
                    
                }.padding(.horizontal, 10.0)
            }
            
            
        }
    }
}

struct RecommendHomeView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendHomeView(userNickName: .constant("멋사"))
    }
}
