//
//  gridView.swift
//  BootCamping
//
//  Created by 차소민 on 2022/11/16.
//

import SwiftUI

struct gridView: View {
    var body: some View {
        Grid{
            GridRow{
                Image("photoCard1")
                    .resizable()
                    .frame(width: 120,height: 120)
                Image("photoCard2")
                    .resizable()
                    .frame(width: 120,height: 120)
                Image("photoCard3")
                    .resizable()
                    .frame(width: 120,height: 120)
            }
            GridRow{
                Image("photoCard1")
                    .resizable()
                    .frame(width: 120,height: 120)
                Image("photoCard2")
                    .resizable()
                    .frame(width: 120,height: 120)
                Image("photoCard3")
                    .resizable()
                    .frame(width: 120,height: 120)
            }
            GridRow{
                Image("photoCard1")
                    .resizable()
                    .frame(width: 120,height: 120)
                Image("photoCard2")
                    .resizable()
                    .frame(width: 120,height: 120)
                Image("photoCard3")
                    .resizable()
                    .frame(width: 120,height: 120)
            }
        }
    }
}

struct gridView_Previews: PreviewProvider {
    static var previews: some View {
        gridView()
    }
}
