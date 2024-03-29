//
//  PhotoDetailView.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/11/14.
//

import SwiftUI


struct PhotoDetailView: View {
    
    var listStruct: ListSturct
    @State private var isMore: Bool = false
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        //user 프로필
                        HStack{
                            Image(listStruct.userImage)
                                .resizable()
                                .frame(width: 50, height: 50)
                            .cornerRadius(50)
                            Text(listStruct.userName)
                            Spacer()
                        }
                        .padding(.leading)
                        
                        // 장소,주소
                        HStack {
                            VStack(alignment: .leading) {
                                Text(listStruct.name)
                                    .font(.title3.bold())
                                Text(listStruct.location)
                            }
                            Spacer()
                        }
                        .padding(.leading)

                        
                        //이미지
                        TabView {
                            ForEach(listStruct.image, id: \.id) { item in
                                item.image
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
                    .padding(.bottom, -40)

                    // 제목, 날짜, 글
                    VStack(alignment: .leading) {
                        Text(listStruct.title)
                            .font(.title)
                            .padding(.top, 20.0)
                        Text(listStruct.date)
                            .padding(.bottom)
                        
                        //더보기
                        if isMore == false {
                            HStack{
                                Text(listStruct.content)
                                    .lineSpacing(7)
                                    .padding(.all, 1.0)
                                    .lineLimit(1)
                                Button {
                                    isMore = true
                                } label: {
                                    Text("더보기")
                                }
                            }
                            
                        } else {
                            Text(listStruct.content)
                                .lineSpacing(7)
                                .padding(.all, 1.0)
                        }
                        
                        Spacer()
                    }.padding()
                }
            }
        }
    }
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView(listStruct: ListSturct(image: [UserImage(imageNmae: "2"), UserImage(imageNmae: "a"), UserImage(imageNmae: "b")], date: "2021년 1월 25일", name: "~~캠핑장", likes: 0, comment: [CommentStruct(name: "bestagrammm", content: "너무너무 이뻐요")], location: "제주도", userName: "_chasomin", userImage: "_chasomin", title: "첫 캠핑", content: "저번주 저는 여름 휴가로 숲속으로 둘러쌓인 캠핑장을 다녀왔어요! 산속에 갇혀서 자연과 함께 캠핑하는 기분도 너무 좋고 산을 바라보며 하루종일 산멍을 왔더니 정말 힐링되더라구요! 가까운 도심 캠핑장도 좋지만 역시 캠핑은 나무와 숲으로 둘러쌓인 곳으로 가야 기분도 좋고 캠핑하는 맛이 나더라구요! 산속의 공기가 가득하게 느껴져서 도심속에서 찌들어있던 피로감을 날릴 수 있었어요! 캠핑장 사이트 옆에는 계곡이 있어서 여름철에는 계곡에서 발에 물을 담그고 시원하게 보내실 수 있습니다. 주변에는 삼탄역이라는 간이역이 있는데 포토존도 있고 도심에선 느끼지 못한 새로운 분위기를 느낄수가 있습니다."))
    }
}
