//
//  MyPageView.swift
//  BootCamping
//
//  Created by Donghoon Bae on 2022/11/14.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        ScrollView {
            NavigationLink(destination: MyProfileView()) {
                ProfileView()
            }
            
            Image("forecast")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Image("calendar")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Text("마이페이지")
                    .font(.largeTitle)
                    .bold()
                    .accessibilityAddTraits(.isHeader)
            }
        }
    }
}

struct ProfileView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("멋사")
                        .font(.title3)
                        .foregroundColor(.black)
                    Text("앱스쿨")
                        .font(.headline)
                        .foregroundColor(.gray)
                }
                Spacer()
                Image(systemName: "person.circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(.indigo)
            }
        }
        .padding()
        .background(Color(red: 0.968, green: 0.973, blue: 0.981))
        .cornerRadius(20)
        .frame(height: 100)
        .shadow(radius: 5)
        .padding(.horizontal, 20)
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}
