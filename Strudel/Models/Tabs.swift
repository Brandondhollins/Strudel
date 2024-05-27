//
//  Tab.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/25/24.
//

import SwiftUI

struct Tabs: Identifiable {
    let id = UUID()
    var name: String
    var icon: String
    var color: Color
    var selection: Tab
}

var tabs = [
    Tabs(name: "Home", icon: "house", color: .cyan, selection: .home),
    Tabs(name: "Explore", icon: "magnifyingglass", color: .blue, selection: .explore),
    Tabs(name: "Library", icon: "rectangle.stack", color: .green, selection: .library),
    Tabs(name: "Account", icon: "person", color: .orange, selection: .account)

]

enum Tab: String {
    case home
    case explore
    case library
    case account
}
