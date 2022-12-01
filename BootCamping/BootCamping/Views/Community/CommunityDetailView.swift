//
//  CommunityDetailView.swift
//  BootCamping
//
//  Created by Donghoon Bae on 2022/12/01.
//

import SwiftUI

struct CommunityDetailView: View {
    @ObservedObject var postStore: PostStore
    
    var posts: Post
    @State private var isGood: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("#\(posts.outdoor) #\(posts.category)").font(.subheadline).padding()
                Text("\(posts.userName)").font(.headline).bold().padding(.horizontal)
                Text("\(posts.date)").font(.subheadline).foregroundColor(.secondary).padding(.horizontal)
                Divider()
                Text("\(posts.content)").font(.body).padding()
                Divider()
                HStack {
                    Image(systemName: "ellipsis.message")
                    Text("댓글 쓰기")
                    Spacer()
                    Button {
                        isGood.toggle()
                    } label: {
                        Image(systemName: isGood ? "hand.thumbsup.fill" : "hand.thumbsup")
                        Text("\(posts.likes)")
                    }
                }.font(.subheadline).padding()
                
                Divider()
                VStack(alignment: .leading) {
                    HStack {
                        Text("익명1").bold()
                        Text("와 정말 유용해요")
                    }.padding()
                    HStack {
                        Text("익명2").bold()
                        Text("왕데빅")
                    }.padding()
                    HStack {
                        Text("익명3").bold()
                        Text("초데빅")
                    }.padding()
                }.font(.subheadline)
                
            }
            .padding()
        }
    }
}

struct CommunityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityDetailView(postStore: PostStore(), posts: PostStore().postData.first!)
    }
}
