//
//  Posts.swift
//  BootCamping
//
//  Created by Roen White on 2022/11/15.
//

import Foundation

struct Post: Codable, Identifiable {
    var id = UUID()
    var outdoor: String
    var category: String
    var content: String
    var userName: String
    var date: String
    var likes: Int
    var commentsCount: Int
}

var PostData: [Post] = [
    Post(outdoor: "캠핑", category: "동행", content: "강아지 산책은 역시 남의 강아지가 최고야", userName: "campingandastyle", date: "2022.11.15", likes: 3, commentsCount: 3),
    Post(outdoor: "캠핑", category: "동행", content: "우중 캠핑 같이 가실분 계신가요?", userName: "Raincamping", date: "2022.11.14", likes: 2, commentsCount: 4),
    Post(outdoor: "차박", category: "질문", content: "뭘 질문하려고 했을까요?", userName: "kkamukum", date: "2022.11.14", likes: 5, commentsCount: 10),
    Post(outdoor: "백패킹", category: "자유", content: "백패킹의 묘미가 있네요", userName: "ahchupda", date: "2022.11.13", likes: 5, commentsCount: 5)
]

class PostStore: ObservableObject {
    @Published var posts: [Post] = PostData
}
