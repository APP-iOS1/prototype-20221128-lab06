//
//  PhotoCardData.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/11/14.
//

import SwiftUI

struct PhotoCardData: Identifiable {
    var id = UUID()
    var title: String
    var story: String
}

var placesList = [
        PhotoCardData(title: "애월더선셋", story: "해지는 모습을 볼 수 있는 제주 애월카페. 맑은 날 가면 멋진 바다배경의 인생사진을 얻을 수 있다."),
        PhotoCardData(title: "주전패밀리캠핑장", story: "울산 주전해안에 위치한 해돋이 명소 캠핑장. 총 5개 구역으로 구분된다."),
        PhotoCardData(title: "더무빙카라반", story: "자연 속에서 즐기는 감성 카라반 캠핑. 차별화된 독특한 글램핑 시설의 프리미엄 카라반 리조트로, 바다와 해수욕장이 인접해 있다.")
    ]

//class PhotoCardList: ObservableObject {
//    @Published var photoPlaceList: PhotoCardData
//
//    init(photoPlaceList: [PhotoCardData] = []) {
//        self.photoPlaceList = photoPlaceList
//    }
//
//}
