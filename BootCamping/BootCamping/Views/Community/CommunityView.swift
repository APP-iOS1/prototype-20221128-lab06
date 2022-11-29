//
//  CommunityView.swift
//  BootCamping
//
//  Created by Roen White on 2022/11/14.
//

import SwiftUI

struct CommunityView: View {
    @ObservedObject var postStore = PostStore(posts: postData)
    
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
        .navigationBarItems(trailing: NavigationLink(destination: WriteView(postStore: PostStore(posts: postData)), label: {Text("글쓰기")})
        )
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}
