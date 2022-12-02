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
                            NavigationLink(destination: PhotoDetailView(listStruct: ListSturct(image: [UserImage(imageNmae: "2"), UserImage(imageNmae: "a"), UserImage(imageNmae: "b")], date: "2021년 1월 25일", name: "애플오토캠핑장", likes: 0, comment: [CommentStruct(name: "bestagrammm", content: "너무너무 이뻐요")], location: "제주도", userName: "_chasomin", userImage: "_chasomin", title: "첫 캠핑", content: "저번주 저는 여름 휴가로 숲속으로 둘러쌓인 캠핑장을 다녀왔어요! 산속에 갇혀서 자연과 함께 캠핑하는 기분도 너무 좋고 산을 바라보며 하루종일 산멍을 왔더니 정말 힐링되더라구요! 가까운 도심 캠핑장도 좋지만 역시 캠핑은 나무와 숲으로 둘러쌓인 곳으로 가야 기분도 좋고 캠핑하는 맛이 나더라구요! 산속의 공기가 가득하게 느껴져서 도심속에서 찌들어있던 피로감을 날릴 수 있었어요! 캠핑장 사이트 옆에는 계곡이 있어서 여름철에는 계곡에서 발에 물을 담그고 시원하게 보내실 수 있습니다. 주변에는 삼탄역이라는 간이역이 있는데 포토존도 있고 도심에선 느끼지 못한 새로운 분위기를 느낄수가 있습니다."))) {
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
    
}

struct FollowPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        FollowPhotoView()
    }
}
