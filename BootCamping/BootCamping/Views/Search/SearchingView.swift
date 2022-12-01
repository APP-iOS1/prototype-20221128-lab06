//
//  SearchingView.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/12/01.
//

import SwiftUI

struct SearchingView: View {
    
    
    var body: some View {
        VStack {
            SearchingPhotoView()
            Divider()
            
            //캠핑장 맵뷰
            
            Divider()
            
            //지역
            
            //커뮤니티 글
            Divider()
            Spacer()
            
        }

    }
}

struct SearchingView_Previews: PreviewProvider {
    static var previews: some View {
        SearchingView()
    }
}
