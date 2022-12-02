//
//  PhotoDetailView.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/11/14.
//

import SwiftUI

struct PhotoDetailView: View {
    var images = ["photoCard1","photoCard2","photoCard3"]
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    ScrollView(.horizontal, showsIndicators: false) {
//                        HStack {
//                            Image("photoCard1")  .aspectRatio(contentMode: .fill)
//                                .frame(width: 300, height: 400)
//                                .cornerRadius(20)
//                                .padding(.leading, 10.0)
//                            Image("photoCard2")
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width: 300, height: 400)
//                                .cornerRadius(20)
//                            Image("photoCard3")
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width: 300, height: 400)
//                                .cornerRadius(20)
//                                .padding( .trailing, 10.0)
//
//                        }
                        //user 프로필
                        HStack{
                            Image("_chasomin")
                                .resizable()
                                .frame(width: 50, height: 50)
                            .cornerRadius(50)
                            Text("_chasomin")
                            Spacer()
                        }
                        .padding(.leading)
                        
                        // 장소,주소
                        HStack {
                            VStack(alignment: .leading) {
                                Text("주전패밀리캠핑장")
                                    .font(.title3.bold())
                                Text("상세주소")
                            }
                            Spacer()
                        }
                        .padding(.leading)

                        
                        //이미지
                        TabView {
                            ForEach(images, id: \.self) { item in
                                Image(item)
                                    .resizable()
                                
                            }
                        }
//                        .tabViewStyle(PageTabViewStyle())
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                        .frame(width: 400,height: 400)
                    }
                    //좋아요, 댓글
                    HStack{
                        Image(systemName: "heart")
                            .font(.largeTitle)
                        Image(systemName: "bubble.right")
                            .font(.title)
                    }
                    .padding(.leading,10)

                    
                    VStack(alignment: .leading) {
                        Text("여자친구와 주말 힐링 캠핑")
                            .font(.title)
                            .padding(.top, 20.0)
                        Text("저번주 저는 여름 휴가로 숲속으로 둘러쌓인 캠핑장을 다녀왔어요! 산속에 갇혀서 자연과 함께 캠핑하는 기분도 너무 좋고 산을 바라보며 하루종일 산멍을 왔더니 정말 힐링되더라구요! 가까운 도심 캠핑장도 좋지만 역시 캠핑은 나무와 숲으로 둘러쌓인 곳으로 가야 기분도 좋고 캠핑하는 맛이 나더라구요! 산속의 공기가 가득하게 느껴져서 도심속에서 찌들어있던 피로감을 날릴 수 있었어요! 캠핑장 사이트 옆에는 계곡이 있어서 여름철에는 계곡에서 발에 물을 담그고 시원하게 보내실 수 있습니다. 주변에는 삼탄역이라는 간이역이 있는데 포토존도 있고 도심에선 느끼지 못한 새로운 분위기를 느낄수가 있습니다.")
                            .lineSpacing(7)
                            .padding(.all, 1.0)
                        Spacer()
                    }.padding()
                }
            }
        }
    }
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView()
    }
}
