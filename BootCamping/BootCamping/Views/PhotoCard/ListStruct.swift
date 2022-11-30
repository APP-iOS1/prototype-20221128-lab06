//
//  ListStruct.swift
//  BootCamping
//
//  Created by 조현호 on 2022/11/30.
//

import Foundation

struct ListSturct: Identifiable {
    var id = UUID()
    var image: String
    var date: String
    var name: String
}

class ListStore: ObservableObject {
    @Published var listData: [ListSturct] = [
        ListSturct(image: "photoCard1", date: "2022년 11월 10일", name: "북분솔밭캠핑장"),
        ListSturct(image: "photoCard2", date: "2021년 11월 29일", name: "주전패밀리캠핑장"),
        ListSturct(image: "photoCard3", date: "2021년 08월 25일", name: "애플오토캠핑장")
    ]
}
