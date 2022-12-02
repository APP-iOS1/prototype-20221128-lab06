//
//  ListCell.swift
//  BootCamping
//
//  Created by 조현호 on 2022/11/30.
//

import SwiftUI

struct ListCell: View {
    var listCell: ListSturct
    
    var body: some View {
        HStack {
            listCell.image
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(20)
            Spacer()
            VStack(alignment: .trailing) {
                Text(listCell.date)
                    .font(.title3)
                Text(listCell.name)
                    .font(.title2)
                    .padding(.top, 5)
            }
        }
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(listCell: ListSturct(image: Image("2"), date: "2021년 1월 25일", name: "", likes: 0, comment: [CommentStruct(name: "bestagrammm", content: "너무너무 이뻐요")], location: "제주도", userName: "_chasomin", userImage: "_chasomin", title: "첫 캠핑", content: "저번주 저는 여름 휴가로 숲속으로 둘러쌓인 캠핑장을 다녀왔어요! 산속에 갇혀서 자연과 함께 캠핑하는 기분도 너무 좋고 산을 바라보며 하루종일 산멍을 왔더니 정말 힐링되더라구요! 가까운 도심 캠핑장도 좋지만 역시 캠핑은 나무와 숲으로 둘러쌓인 곳으로 가야 기분도 좋고 캠핑하는 맛이 나더라구요! 산속의 공기가 가득하게 느껴져서 도심속에서 찌들어있던 피로감을 날릴 수 있었어요! 캠핑장 사이트 옆에는 계곡이 있어서 여름철에는 계곡에서 발에 물을 담그고 시원하게 보내실 수 있습니다. 주변에는 삼탄역이라는 간이역이 있는데 포토존도 있고 도심에선 느끼지 못한 새로운 분위기를 느낄수가 있습니다."))
    }
}
