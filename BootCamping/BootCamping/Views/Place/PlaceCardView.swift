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
        VStack(alignment: .leading) {
            HStack {
                Text("\(places.facltNm)")
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "bookmark")
                    .resizable().frame(width: 18, height: 30)
                    .foregroundColor(.gray)
                    .padding(.trailing, 3)
            }
            HStack {
                Text("\(Image(systemName: "mappin.circle.fill")) \(places.addr1)")
                    .bold()
                    .font(.headline)
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }
            HStack {
                Image("jeju1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100)
                    .cornerRadius(20)
                Image("jeju2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100)
                    .cornerRadius(20)
                Image("jeju3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100)
                    .cornerRadius(20)
            }

            Divider()
            if places.intro == "" {
                Text("정보 없음")
                    .lineSpacing(7)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)

            } else {
                Text("\(places.intro)")
                    .lineSpacing(7)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }
        .padding()
        .background(Color(.white))
        .frame(height: 250)
        .cornerRadius(10)
        .padding(.top, 10)
    }
}

//struct PlaceCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlaceCardView(places: )
//    }
//}
