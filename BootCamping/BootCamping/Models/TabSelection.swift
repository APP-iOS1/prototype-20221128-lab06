//
//  TabSelection.swift
//  BootCamping
//
//  Created by 박희경 on 2022/11/16.
//

import SwiftUI
import Combine

class TabSelection: ObservableObject {
    @Published var selectedTab: Int = 1
}
