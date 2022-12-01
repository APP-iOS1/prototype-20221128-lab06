//
//  BootCampingTabView.swift
//  BootCamping
//
//  Created by Donghoon Bae on 2022/11/14.
//

import SwiftUI

struct BootCampingTabView: View {
    @State var text: String = " "
    @State private var selection: Int = 1
    @Binding var userNickName: String
    
    var body: some View {
        TabView (selection: $selection) {
            NavigationStack {
//                HomeView(selection: $selection)
                NewHomeView()
            }.tabItem {
                Image(systemName: "house.fill")
                Text("홈")
            }.tag(1)
            
            NavigationStack {
                SearchBar(text: $text, userNickName: $userNickName, selection: $selection)
            }.tabItem {
                Image(systemName: "location.magnifyingglass")
                Text("검색")
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
//                Image(systemName: "location.magnifyingglass")
                Image(systemName: "map.fill")
                Text("플레이스")
            }.tag(4)
            
            NavigationStack {
                CommunityView(postStore: PostStore())
            }.tabItem {
                Image(systemName: "newspaper.fill")
                Text("커뮤니티")
            }.tag(5)
//            NavigationStack {
//                MyPageView()
//            }.tabItem {
//                Image(systemName: "person.fill")
//                Text("마이 캠핑")
//            }.tag(5)
        }
    }
}

struct BootCampingTabView_Previews: PreviewProvider {
    static var previews: some View {
        BootCampingTabView(userNickName: .constant("멋사"))
    }
}
