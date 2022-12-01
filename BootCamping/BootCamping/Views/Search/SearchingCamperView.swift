//
//  SearchingCamperView.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/12/01.
//

import SwiftUI

struct SearchingCamperView: View {
    var campers = ["_chasomin","chohh02","JJ_ang","outdoorlife.prim","thekoon_","bestagrammm"]
    
    var body: some View {
        VStack {
            HStack {
                Text("캠퍼 검색결과")
                    .font(.title2)
                    .bold()
                    .padding()
                Spacer()
            }
            .padding(.vertical, -5)
            ForEach(campers, id: \.self) { camper in
                HStack {
                    Image(camper)
                        .resizable()
                        .frame(width: 30,height: 30)
                        .cornerRadius(50)
                    Text(camper)
                        .font(.subheadline)
                    Spacer()
                }
            }
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
        }
    }
}

struct SearchingCamperView_Previews: PreviewProvider {
    static var previews: some View {
        SearchingCamperView()
    }
}
