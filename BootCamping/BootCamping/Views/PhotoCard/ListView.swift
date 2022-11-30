//
//  ListView.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/11/30.
//
//
import SwiftUI

struct ListView: View {
    @ObservedObject var listStore: ListStore
    
    // 사진, 날짜, 이름
    
    //    @ObservedObject var photoList: PhotoCardList
    
//    // 포토카드 사진
//    var photoCards = ["photoCard1", "photoCard2", "photoCard3","photoCard3","photoCard3","photoCard3","photoCard1","photoCard1","photoCard1","photoCard1","photoCard1","photoCard1","photoCard1","photoCard1","photoCard1","photoCard2","photoCard2","photoCard2"]
    
    // 날짜
    
    
    var body: some View {
        List {
            ForEach(listStore.listData) { item in
                ListCell(listCell: item)
            }
        }
        .listStyle(.plain)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(listStore: ListStore())
    }
}
