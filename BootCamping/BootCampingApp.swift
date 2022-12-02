//
//  BootCampingApp.swift
//  BootCamping
//
//  Created by Donghoon Bae on 2022/11/14.
//

import SwiftUI

@main
struct BootCampingApp: App {
    var body: some Scene {
        WindowGroup {
            BootCampingTabView(userNickName: .constant("멋사"), searchText: .constant(""))
                .environmentObject(PlaceStore())
        }
    }
}
