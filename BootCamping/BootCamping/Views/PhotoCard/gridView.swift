//
//  gridView.swift
//  BootCamping
//
//  Created by 차소민 on 2022/11/16.
//

import SwiftUI

struct gridView: View {
    
    var photoCards = ["photoCard1", "photoCard2", "photoCard3","photoCard3","photoCard3","photoCard3","photoCard1","photoCard1","photoCard1","photoCard1","photoCard1","photoCard1","photoCard1","photoCard1","photoCard1","photoCard2","photoCard2","photoCard2"]
    
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
