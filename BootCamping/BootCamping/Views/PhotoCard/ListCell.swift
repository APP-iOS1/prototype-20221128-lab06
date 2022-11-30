//
//  ListCell.swift
//  BootCamping
//
//  Created by 조현호 on 2022/11/30.
//

import SwiftUI

struct ListCell: View {
    var listCell: ListSturct
    
    var body: some View {
        HStack {
            Image(listCell.image)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(20)
            Spacer()
            VStack(alignment: .trailing) {
                Text(listCell.date)
                    .font(.title3)
                Text(listCell.name)
                    .font(.title2)
                    .padding(.top, 5)
            }
        }
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(listCell: ListSturct(image: "photoCard1", date: "2022년 11월 10일", name: "북분솔밭캠핑장"))
    }
}
