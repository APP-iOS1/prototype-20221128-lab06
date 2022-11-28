//
//  PlaceCardView.swift
//  BootCamping
//
//  Created by Donghoon Bae on 2022/11/14.
//

import SwiftUI

struct PlaceCardView: View {
    
    var places: Places
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("\(places.name)")
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "bookmark")
                    .resizable().frame(width: 18)
                    .foregroundColor(.gray)
                    .padding(.trailing, 3)
            }
            HStack {
                Text("\(Image(systemName: "mappin.circle.fill")) \(places.place)")
                    .bold()
                    .font(.headline)
                    .foregroundColor(.gray)
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
            Text("\(places.desc)")
                .lineSpacing(7)
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
        }
        .padding()
        .background(Color(.white))
        .frame(height: 250)
        .cornerRadius(10)
        .padding(.top, 10)
    }
}

struct PlaceCardView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceCardView(places: placesList[1] )
    }
}
