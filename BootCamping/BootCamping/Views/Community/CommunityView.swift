//
//  CommunityView.swift
//  BootCamping
//
//  Created by Roen White on 2022/11/14.
//

import SwiftUI

struct CommunityView: View {
    @ObservedObject var postStore: PostStore
    @Binding var searchText: String
    
    var body: some View {
        VStack {
            FilteringView()
                .padding()
            CommunitySearchView()
                .padding(.bottom, 5)
            ScrollView {
                ForEach (postStore.postData) { post in
                    NavigationLink {
                        CommunityDetailView(postStore: postStore, posts: post)
                    } label: {
                        PostCell(post: post)
                            .padding(.horizontal, 11)
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Text("커뮤니티")
                    .font(.largeTitle).bold()
                    .accessibilityAddTraits(.isHeader)
            }
        }
        .navigationBarItems(trailing: NavigationLink(destination: {
            WriteView(postStore: postStore)
        }, label: {
            Text("글쓰기")
        }))
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView(postStore: PostStore(), searchText: .constant(""))
    }
}
