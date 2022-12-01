//
//  PlaceCardView.swift
//  BootCamping
//
//  Created by Donghoon Bae on 2022/11/14.
//

import SwiftUI

struct PlaceCardView: View {
    
    var places: Item
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Text("\(String(Array(places.facltNm).filter { !"(주)".contains($0) }))")
                    .font(.title2)
                    .kerning(-0.5)
                Spacer()
                Image(systemName: "bookmark")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding(.trailing, 3)
            }
            Text("\(Image(systemName: "star.fill")) 5.0점 (후기 4개)")
                .font(.footnote)
            
            HStack {
                Text("\(Image(systemName: "mappin.circle.fill")) \(places.addr1)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(1)
            }
            HStack {
                Image("jeju1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100)
                    .cornerRadius(10)
                Image("jeju2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100)
                    .cornerRadius(10)
                Image("jeju3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100)
                    .cornerRadius(10)
            }
            .padding(.vertical, 7)

            Divider()
            if places.intro == "" {
                Text("정보 없음")
                    .lineSpacing(7)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)

            } else {
                Text("\(places.intro)")
                    .font(.subheadline)
                    .lineSpacing(7)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }
        .padding()
        .background(
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 250)
        )
        .padding(.top, 10)
        .shadow(radius: 5)
        
    }
}

//struct PlaceCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlaceCardView(places: )
//    }
//}
