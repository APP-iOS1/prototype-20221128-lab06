//
//  SearchView.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/12/01.
//

import SwiftUI

struct SearchView: View {
    
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
        else {
            SearchingView(placeStore: PlaceStore())
        }
        
        Spacer()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(isEditing: .constant(false), userNickName: .constant("멋사"), selection: .constant(4))
    }
}
