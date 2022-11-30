//
//  gridView.swift
//  BootCamping
//
//  Created by 차소민 on 2022/11/16.
//

import SwiftUI

struct gridView: View {
    
    var photoCards = ["1", "2", "3","4","5","6","7","8","9","10","11","12","13","14"]
    
    let columns = [ GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0..<photoCards.count, id: \.self) { index in
                    GridRow{
                        Image(photoCards[index])
                            .resizable()
                            .frame(width: 140,height: 140)
                            .padding(.vertical, -4)
                    }
                }
            }
        }
        .padding(.top, 15)
    }
}

struct gridView_Previews: PreviewProvider {
    static var previews: some View {
        gridView()
    }
}
