//
//  SearchBar.swift
//  BootCamping
//
//  Created by 조현호 on 2022/11/30.
//

import SwiftUI

struct SearchBar: View {
    @ObservedObject var placeStore: PlaceStore
    
    @Binding var text: String
    
    @State private var isEditing = false
    
    @Binding var userNickName: String
    
    @Binding var selection: Int
    
    var camper = ["_chasomin","chohh02","JJ_ang","outdoorlife.prim","thekoon_","bestagrammm","디노담양힐링파크지점","쉐르빌리안티티","아웃오브파크","양촌여울체험캠프","어반슬로우시티","드림랜드오토캠핑장", "자연인", "덕훈캠핑장", "동훈캠핑장", "현호캠핑장", "소민캠핑장", "소영캠핑장"]
    
//    var facltNm = ["디노담양힐링파크","쉐르빌리안티티","아웃오브파크","양촌여울체험캠프","어반슬로우시티","드림랜드오토캠핑장", "자연인"]
    
    @State private var toggleSearchingView = false
    
    var body: some View {
        
        VStack {
            //검색 탭
            HStack {
                TextField("지역, 포토, 캠퍼 검색", text: $text, onCommit:{ toggleSearchingView.toggle()})
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .overlay(
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 8)
                            
                            if isEditing {
                                Button(action: {
                                    self.text = ""
                                }) {
                                    Image(systemName: "multiply.circle.fill")
                                        .foregroundColor(.gray)
                                        .padding(.trailing, 8)
                                }
                                
                            }
                        }
                    )
                    .padding(.horizontal, 10)
                    .onTapGesture {
                        self.isEditing = true
                    }
                
                if isEditing {
                    Button(action: {
                        self.isEditing = false
                        self.text = ""
                        
                    }) {
                        Text("Cancel")
                    }
                    .transition(.move(edge: .trailing))
//                    .animation(.default)
                }
            }
            
            if isEditing {
                if text != "" {
                    List {
                        ForEach(camper.filter({"\($0)".contains(self.text) || self.text.isEmpty}), id: \.self) { item in
                            VStack{
                                Text(item)
                            }
                        }
                    }.listStyle(.plain)
                        .frame(height: text.isEmpty ? 30 : 120)
                }
            }
            
            SearchView(toggleSearchingView: $toggleSearchingView, isEditing: $isEditing, userNickName: $userNickName, selection: $selection)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Text("검색")
                    .font(.largeTitle).bold()
                    .accessibilityAddTraits(.isHeader)
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(placeStore: PlaceStore(), text: .constant(""), userNickName: .constant("멋사"), selection: .constant(4))
    }
}
