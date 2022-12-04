//
//  SearchView.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/12/01.
//

import SwiftUI

struct SearchView: View {
    @Binding var toggleSearchingView: Bool
    
    @Binding var isEditing: Bool
    
    @Binding var userNickName: String
    
    @Binding var selection: Int
    
    var body: some View {
        if isEditing == false {
            ScrollView {
                //밑에 세부 뷰
                RecommendHomeView(userNickName: $userNickName)
                    .padding(.vertical, 10)
                Divider()
                
                HomeCategory(selection: $selection)
                    .padding()
                Divider()
                PopularSearchResults()
                    .padding()
                //            Spacer()
            }
        }
        if toggleSearchingView {
            SearchingView(placeStore: PlaceStore())
        }
        
        
        Spacer()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(toggleSearchingView: .constant(false), isEditing: .constant(false), userNickName: .constant("멋사"), selection: .constant(4))
    }
}
