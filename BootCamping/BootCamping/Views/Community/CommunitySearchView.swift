//
//  CommunitySearchBar.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/12/02.
//

import SwiftUI

struct CommunitySearchView: View {
    
    let communityKeywords = ["캠핑", "차박", "글램핑", "백패킹", "자유", "질문", "캠핑팁", "중고거래", "동행"]
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                CommunitySearchBar(text: $searchText)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                if searchText.isEmpty {
                } else {
                    VStack {
                        ForEach(communityKeywords.filter{$0.hasPrefix(searchText) || searchText == ""}, id:\.self) {recommendSearch in
                            Button {
                               searchText = recommendSearch
                            } label: {
                                Text(recommendSearch)
                            }
                        }
                    }
                    //리스트의 스타일 수정
                    .listStyle(PlainListStyle())
                    //화면 터치시 키보드 숨김
                    .onTapGesture {
                        hideKeyboard()
                    }
                }
                
                
            }
        }
        .frame(height: searchText.isEmpty ? 30 : 30 * CGFloat( communityKeywords.filter{$0.hasPrefix(searchText) || searchText == ""}.count + 1))
    }
}

struct CommunitySearchBar: View {
    @Binding var text: String
    
       var body: some View {
           HStack {
               HStack {
                   Image(systemName: "magnifyingglass")
    
                   TextField("Search", text: $text)
                       .foregroundColor(.primary)

                   if !text.isEmpty {
                       Button(action: {
                           self.text = ""
                       }) {
                           Image(systemName: "xmark.circle.fill")
                       }
                   } else {
                       EmptyView()
                   }
               }
               .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
               .foregroundColor(.secondary)
               .background(Color(.secondarySystemBackground))
               .cornerRadius(10.0)
           }
           .padding(.horizontal)
       }
}

//화면 터치시 키보드 숨김
#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

struct CommunitySearchView_Previews: PreviewProvider {
    static var previews: some View {
        CommunitySearchView()
    }
}
