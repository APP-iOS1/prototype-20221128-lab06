//
//  FilteringView.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/11/29.
//

import SwiftUI

struct FilteringView: View {
    
    @Environment(\.colorScheme) var scheme
    @State private var isOutdoorAll: Bool = true
    @State private var isOutdoorCamping: Bool = false
    @State private var isOutdoorCarsleeping: Bool = false
    @State private var isOutdoorGlamping: Bool = false
    @State private var isOutdoorBackpacking: Bool = false
    
    @State private var isCategoryAll: Bool = true
    @State private var isCategoryFree: Bool = false
    @State private var isCategoryQuestion: Bool = false
    @State private var isCategoryTip: Bool = false
    @State private var isCategoryMarket: Bool = false
    @State private var isCategoryAccompany: Bool = false
    
    var body: some View {
        Grid { // 필터링 버튼 그룹
            GridRow { // 필터링 카테고리 제목
                Text("아웃도어")
                ScrollView(.horizontal, showsIndicators: false) { // 아웃도어 버튼 그룹
                    HStack{
                        if isOutdoorAll {
                            Button("전체", action: { self.isOutdoorAll = false })
                                .foregroundColor(Theme.myBackgroundColor(forScheme: scheme))
                                .buttonStyle(.borderedProminent)
                                .tint(Color(UIColor.pointColor!))
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
                                .foregroundColor(Theme.myBackgroundColor(forScheme: scheme))
                                .buttonStyle(.borderedProminent)
                                .tint(Color(UIColor.pointColor!))
                        } else {
                            Button("캠핑", action: {
                                self.isOutdoorCamping = true
                                self.isOutdoorAll = false
                            })
                            .buttonStyle(.bordered)
                        }
                        
                        if isOutdoorCarsleeping {
                            Button("차박", action: { self.isOutdoorCarsleeping = false })
                                .foregroundColor(Theme.myBackgroundColor(forScheme: scheme))
                                .buttonStyle(.borderedProminent)
                                .tint(Color(UIColor.pointColor!))
                        } else {
                            Button("차박", action: {
                                self.isOutdoorCarsleeping = true
                                self.isOutdoorAll = false
                            })
                            .buttonStyle(.bordered)
                        }
                        
                        if isOutdoorGlamping {
                            Button("글램핑", action: { self.isOutdoorGlamping = false })
                                .foregroundColor(Theme.myBackgroundColor(forScheme: scheme))
                                .buttonStyle(.borderedProminent)
                                .tint(Color(UIColor.pointColor!))
                        } else {
                            Button("글램핑", action: {
                                self.isOutdoorGlamping = true
                                self.isOutdoorAll = false
                            })
                            .buttonStyle(.bordered)
                        }
                        
                        if isOutdoorBackpacking {
                            Button("백패킹", action: { self.isOutdoorBackpacking = false })
                                .foregroundColor(Theme.myBackgroundColor(forScheme: scheme))
                                .buttonStyle(.borderedProminent)
                                .tint(Color(UIColor.pointColor!))
                        } else {
                            Button("백패킹", action: {
                                self.isOutdoorBackpacking = true
                                self.isOutdoorAll = false
                            })
                            .buttonStyle(.bordered)
                        }
                    }
                }
            }.font(.subheadline)
            
            GridRow {
                Text("글 종류")
                
                ScrollView(.horizontal, showsIndicators: false) { // 글 종류 버튼 그룹
                    HStack {
                        if isCategoryAll {
                            Button("전체", action: { self.isCategoryAll = false })
                                .foregroundColor(Theme.myBackgroundColor(forScheme: scheme))
                                .buttonStyle(.borderedProminent)
                                .tint(Color(UIColor.pointColor!))
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
                                .foregroundColor(Theme.myBackgroundColor(forScheme: scheme))
                                .buttonStyle(.borderedProminent)
                                .tint(Color(UIColor.pointColor!))
                        } else {
                            Button("자유", action: {
                                self.isCategoryFree = true
                                self.isCategoryAll = false
                            })
                            .buttonStyle(.bordered)
                        }
                        
                        if isCategoryQuestion {
                            Button("질문", action: { self.isCategoryQuestion = false })
                                .foregroundColor(Theme.myBackgroundColor(forScheme: scheme))
                                .buttonStyle(.borderedProminent)
                                .tint(Color(UIColor.pointColor!))
                        } else {
                            Button("질문", action: {
                                self.isCategoryQuestion = true
                                self.isCategoryAll = false
                            })
                            .buttonStyle(.bordered)
                        }
                        
                        if isCategoryTip {
                            Button("캠핑팁", action: { self.isCategoryTip = false })
                                .foregroundColor(Theme.myBackgroundColor(forScheme: scheme))
                                .buttonStyle(.borderedProminent)
                                .tint(Color(UIColor.pointColor!))
                        } else {
                            Button("캠핑팁", action: {
                                self.isCategoryTip = true
                                self.isCategoryAll = false
                            })
                            .buttonStyle(.bordered)
                        }
                        
                        if isCategoryMarket {
                            Button("중고거래", action: { self.isCategoryMarket = false })
                                .foregroundColor(Theme.myBackgroundColor(forScheme: scheme))
                                .buttonStyle(.borderedProminent)
                                .tint(Color(UIColor.pointColor!))
                        } else {
                            Button("중고거래", action: {
                                self.isCategoryMarket = true
                                self.isCategoryAll = false
                            })
                            .buttonStyle(.bordered)
                        }
                        
                        if isCategoryAccompany {
                            Button("동행", action: { self.isCategoryAccompany = false })
                                .foregroundColor(Theme.myBackgroundColor(forScheme: scheme))
                                .buttonStyle(.borderedProminent)
                                .tint(Color(UIColor.pointColor!))
                        } else {
                            Button("동행", action: {
                                self.isCategoryAccompany = true
                                self.isCategoryAll = false
                            })
                            .buttonStyle(.bordered)
                        }
                    }
                }
            }.font(.subheadline)
        }
//        .foregroundColor(.black)
    }
}


struct FilteringView_Previews: PreviewProvider {
    static var previews: some View {
        FilteringView()
    }
}
