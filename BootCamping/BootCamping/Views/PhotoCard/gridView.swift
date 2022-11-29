//
//  gridView.swift
//  BootCamping
//
//  Created by 차소민 on 2022/11/16.
//

import SwiftUI

struct gridView: View {
    
    var photoCards = ["photoCard1", "photoCard2", "photoCard3","photoCard3","photoCard3","photoCard3","photoCard1","photoCard1","photoCard1","photoCard1","photoCard1","photoCard1","photoCard1","photoCard1","photoCard1"]
    
    let columns = [ GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0..<photoCards.count, id: \.self) { index in
                    GridRow{
                        Image(photoCards[index])
                            .resizable()
                            .frame(width: 120,height: 120)
                    }
//                    GridRow{
//                                    Image(photoCard[0])
//                                        .resizable()
//                                        .frame(width: 120,height: 120)
//                                    Image(photoCard[1])
//                                        .resizable()
//                                        .frame(width: 120,height: 120)
//                                    Image(photoCard[2])
//                                        .resizable()
//                                        .frame(width: 120,height: 120)
//                        Image(photoCard[2])
//                            .resizable()
//                            .frame(width: 120,height: 120)
//                                }
                }
            }
            //        Grid{
            //            ForEach(photoCards, id: \.self) { photocard in
            //                GridRow {
            //                    Image("\(photocard)")
            //                        .resizable()
            //                        .frame(width: 120,height: 120)
            //                }
            //            }
            //            GridRow{
            //                Image("photoCard1")
            //                    .resizable()
            //                    .frame(width: 120,height: 120)
            //                Image("photoCard2")
            //                    .resizable()
            //                    .frame(width: 120,height: 120)
            //                Image("photoCard3")
            //                    .resizable()
            //                    .frame(width: 120,height: 120)
            //            }
            //            GridRow{
            //                Image("photoCard1")
            //                    .resizable()
            //                    .frame(width: 120,height: 120)
            //                Image("photoCard2")
            //                    .resizable()
            //                    .frame(width: 120,height: 120)
            //                Image("photoCard3")
            //                    .resizable()
            //                    .frame(width: 120,height: 120)
            //            }
            //            GridRow{
            //                Image("photoCard1")
            //                    .resizable()
            //                    .frame(width: 120,height: 120)
            //                Image("photoCard2")
            //                    .resizable()
            //                    .frame(width: 120,height: 120)
            //                Image("photoCard3")
            //                    .resizable()
            //                    .frame(width: 120,height: 120)
            //            }
            //        }
        }
    }
}

struct gridView_Previews: PreviewProvider {
    static var previews: some View {
        gridView()
    }
}
