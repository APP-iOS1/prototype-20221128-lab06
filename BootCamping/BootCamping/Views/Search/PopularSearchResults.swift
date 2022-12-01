//
//  PopularSerchResults.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/12/01.
//

import SwiftUI

struct PopularSearchResults: View {
    let popularSearchResults = ["캠핑 요리", "오션뷰", "텐트 추천", "바베큐 장비", "차박 장소 추천"]
    let arrow = ["arrowtriangle.up.fill", "arrowtriangle.down.fill"]
    
    
    var body: some View {
        VStack {
            HStack {
                Text("인기 검색어")
                    .font(.title2)
                    .bold()
                Spacer()
            }
            .padding(.vertical, 7)
            ForEach(0..<popularSearchResults.count, id: \.self) { index in
                HStack {
                    Text("\(index + 1).").padding(.leading, 10)
                    Text(popularSearchResults[index])
                    Spacer()
                    Image(systemName: arrow.randomElement() ?? "arrowtriangle.down.fill")
                        .font(.subheadline)
//                    Spacer()
                        .padding(.vertical, 3)
                }
            }
//            .scrollIndicators(.hidden)
            .listStyle(.plain)
            
        }
    }
}

struct PopularSearchResults_Previews: PreviewProvider {
    static var previews: some View {
        PopularSearchResults()
    }
}
