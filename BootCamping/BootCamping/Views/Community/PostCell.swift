//
//  PostCell.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/11/29.
//

import SwiftUI

struct PostCell: View {
    var post: Post
    @Environment(\.colorScheme) var scheme
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("#\(post.outdoor)")
                Text("#\(post.category)")
            }
            .font(.subheadline)
            
            Text(post.content).font(.headline)
            Text(post.userName).font(.subheadline).foregroundColor(.gray)
            Divider()
            HStack {
                Text(post.date).font(.subheadline)
                Spacer()
                Group {
                    Image(systemName: "hand.thumbsup")
                    Text("\(post.likes)")
                    Image(systemName: "ellipsis.message")
                    Text("\(post.commentsCount)")
                }.font(.subheadline)
            }
        }
        .padding()
        .background(
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(Theme.myBackgroundColor(forScheme: scheme))
            .shadow(radius: 3)
        )
        .padding(.top, 10)
    }
}

struct PostCell_Previews: PreviewProvider {
    
    static var previews: some View {
        PostCell(post: Post(outdoor: "캠핑", category: "동행", content: "강아지 산책은 역시 남의 강아지가 최고야", userName: "campingandastyle", date: "2022.11.15", likes: 3, commentsCount: 3))
    }
}
