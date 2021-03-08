//
//  ContentView.swift
//  saschasallesiOS
//
//  Created by Sascha Sallès on 07/03/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int = 0
    var body: some View {
        TabView(selection: self.$selection) {
            AboutView()
                .tabItem {
                    Label("About me", systemImage: "person.fill")
                }.tag(1)
            NewsView()
                .tabItem {
                    Label("News", systemImage: "newspaper.fill")
                }.tag(2)
            ContactView()
                .tabItem {
                    Label("Contact", systemImage: "ellipsis.bubble.fill")
                }.tag(3)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
