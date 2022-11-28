//
//  BootCampingTabView.swift
//  BootCamping
//
//  Created by Donghoon Bae on 2022/11/14.
//

import SwiftUI

struct BootCampingTabView: View {
    @State private var selection: Int = 1
    
    var body: some View {
        TabView (selection: $selection) {
            NavigationStack {
                HomeView(selection: $selection)
            }.tabItem {
                Image(systemName: "house.fill")
                Text("홈")
            }.tag(1)
            
            NavigationStack {
                CommunityView()
            }.tabItem {
                Image(systemName: "newspaper.fill")
                Text("커뮤니티")
            }.tag(2)
            
            NavigationStack {
                PhotoCard()
            }.tabItem {
                Image(systemName: "photo.fill.on.rectangle.fill")
                Text("포토")
            }.tag(3)
            
            NavigationStack {
                PlaceView()
            }.tabItem {
                Image(systemName: "pin.fill")
                Text("플레이스")
            }.tag(4)
            
            NavigationStack {
                MyPageView()
            }.tabItem {
                Image(systemName: "person.fill")
                Text("마이 캠핑")
            }.tag(5)
        }
    }
}

struct BootCampingTabView_Previews: PreviewProvider {
    static var previews: some View {
        BootCampingTabView()
    }
}
