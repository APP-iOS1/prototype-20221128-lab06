//
//  CommunityView.swift
//  BootCamping
//
//  Created by Roen White on 2022/11/14.
//

import SwiftUI

struct CommunityView: View {
    
    @ObservedObject var postStore = PostStore()
    
    var body: some View {
        VStack {
            FilteringView()
                .padding()
            ScrollView {
                ForEach (postStore.posts) { post in
                    PostCell(post: post)
                        .padding(.horizontal, 11)
                }
            }
            .background(Color(hue: 0.503, saturation: 0.0, brightness: 0.909))
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Text("커뮤니티")
                    .font(.largeTitle).bold()
                    .accessibilityAddTraits(.isHeader)
            }
        }
        .navigationBarItems(trailing: NavigationLink(destination: WriteView(), label: {Text("글쓰기")})
        )
    }
}


struct FilteringView: View {
    @State private var isOutdoorAll: Bool = true
    @State private var isOutdoorCamping: Bool = false
    @State private var isOutdoorCarsleeping: Bool = false
    @State private var isOutdoorGlamping: Bool = false
    @State private var isOutdoorBackpacking: Bool = false
    
    @State private var isCategoryAll: Bool = true
    @State private var isCategoryFree: Bool = false
    @State private var isCategoryQuestion: Bool = false
    @State private var isCategoryAccompany: Bool = false
    
    var body: some View {
        Grid { // 필터링 버튼 그룹
            GridRow { // 필터링 카테고리 제목
                Text("아웃도어")
                ScrollView(.horizontal, showsIndicators: false) { // 아웃도어 버튼 그룹
                    HStack{
                        if isOutdoorAll {
                            Button("전체", action: { self.isOutdoorAll = false })
                                .foregroundColor(.white)
                                .buttonStyle(.borderedProminent)
                                .tint(.indigo)
                        } else {
                            Button("전체", action: {
                                self.isOutdoorAll = true
                                self.isOutdoorCamping = false
                                self.isOutdoorCarsleeping = false
                                self.isOutdoorGlamping = false
                                self.isOutdoorBackpacking = false
                            })
                            .buttonStyle(.bordered)
                        }
                        
                        if isOutdoorCamping {
                            Button("캠핑", action: { self.isOutdoorCamping = false })
                                .foregroundColor(.white)
                                .buttonStyle(.borderedProminent)
                                .tint(.indigo)
                        } else {
                            Button("캠핑", action: {
                                self.isOutdoorCamping = true
                                self.isOutdoorAll = false
                            })
                            .buttonStyle(.bordered)
                        }
                        
                        if isOutdoorCarsleeping {
                            Button("차박", action: { self.isOutdoorCarsleeping = false })
                                .foregroundColor(.white)
                                .buttonStyle(.borderedProminent)
                                .tint(.indigo)
                        } else {
                            Button("차박", action: {
                                self.isOutdoorCarsleeping = true
                                self.isOutdoorAll = false
                            })
                            .buttonStyle(.bordered)
                        }
                        
                        if isOutdoorGlamping {
                            Button("글램핑", action: { self.isOutdoorGlamping = false })
                                .foregroundColor(.white)
                                .buttonStyle(.borderedProminent)
                                .tint(.indigo)
                        } else {
                            Button("글램핑", action: {
                                self.isOutdoorGlamping = true
                                self.isOutdoorAll = false
                            })
                            .buttonStyle(.bordered)
                        }
                        
                        if isOutdoorBackpacking {
                            Button("백패킹", action: { self.isOutdoorBackpacking = false })
                                .foregroundColor(.white)
                                .buttonStyle(.borderedProminent)
                                .tint(.indigo)
                        } else {
                            Button("백패킹", action: {
                                self.isOutdoorBackpacking = true
                                self.isOutdoorAll = false
                            })
                            .buttonStyle(.bordered)
                        }
                    }
                }
            }
            GridRow {
                Text("글 종류")
                
                ScrollView(.horizontal, showsIndicators: false) { // 글 종류 버튼 그룹
                    HStack {
                        if isCategoryAll {
                            Button("전체", action: { self.isCategoryAll = false })
                                .foregroundColor(.white)
                                .buttonStyle(.borderedProminent)
                                .tint(.indigo)
                        } else {
                            Button("전체", action: {
                                self.isCategoryAll = true
                                self.isCategoryFree = false
                                self.isCategoryQuestion = false
                                self.isCategoryAccompany = false
                            })
                            .buttonStyle(.bordered)
                        }
                        
                        if isCategoryFree {
                            Button("자유", action: { self.isCategoryFree = false })
                                .foregroundColor(.white)
                                .buttonStyle(.borderedProminent)
                                .tint(.indigo)
                        } else {
                            Button("자유", action: {
                                self.isCategoryFree = true
                                self.isCategoryAll = false
                            })
                            .buttonStyle(.bordered)
                        }
                        
                        if isCategoryQuestion {
                            Button("질문", action: { self.isCategoryQuestion = false })
                                .foregroundColor(.white)
                                .buttonStyle(.borderedProminent)
                                .tint(.indigo)
                        } else {
                            Button("질문", action: {
                                self.isCategoryQuestion = true
                                self.isCategoryAll = false
                            })
                            .buttonStyle(.bordered)
                        }
                        
                        if isCategoryAccompany {
                            Button("동행", action: { self.isCategoryAccompany = false })
                                .foregroundColor(.white)
                                .buttonStyle(.borderedProminent)
                                .tint(.indigo)
                        } else {
                            Button("동행", action: {
                                self.isCategoryAccompany = true
                                self.isCategoryAll = false
                            })
                            .buttonStyle(.bordered)
                        }
                    }
                }
            }
        }
        .foregroundColor(.black)
    }
}

struct PostCell: View {
    
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("#\(post.outdoor)")
                Text("#\(post.category)")
            }
            .font(.callout)
            .foregroundColor(.indigo)
            
            Text(post.content).font(.title3)
            Text(post.userName).font(.callout).foregroundColor(.gray)
            Divider()
            HStack {
                Text(post.date).font(.callout)
                Spacer()
                Group {
                    Image(systemName: "hand.thumbsup")
                    Text("\(post.likes)")
                    Image(systemName: "ellipsis.message")
                    Text("\(post.commentsCount)")
                }.foregroundColor(.indigo)
            }
        }
        .padding()
        .background(.white)
        .cornerRadius(10)
        .padding(.top, 10)
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}
