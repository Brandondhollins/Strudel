//
//  ContentView.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/22/24.
//

import SwiftUI
//let app = RealmSwift.App(id: "strudels-zalwkff") // TODO: Set the Realm application ID

struct ContentView: View {
    @EnvironmentObject var model: Model
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    @AppStorage("showAccount") var showAccount = false
    
    init() {
        showAccount = false
    }
    
    var body: some View {
        ZStack {
            Group {
                switch selectedTab {
                case .home:
                    HomeView()
                case .explore:
                    DiscoverView()
                case .library:
                    LibraryView()
                case .account:
                  AccountView()
                }
            }
            .safeAreaInset(edge: .bottom) {
                VStack {}.frame(height: 44)
            }
            
            TabBar()
            
         
        }
        .dynamicTypeSize(.large ... .xxLarge)
        .sheet(isPresented: $showAccount) {
            AccountView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Model())
    }
}
