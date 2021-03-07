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
            Text("Tab Content 2")
                .tabItem {
                    Label("News", systemImage: "newspaper.fill")
                }.tag(2)
            Text("Tab Content 3")
                .tabItem {
                    Label("Contact", systemImage: "ellipsis.bubble.fill")
                }.tag(3)
        }.accentColor(Color(#colorLiteral(red: 0.3450980392, green: 0.337254902, blue: 0.8392156863, alpha: 1)))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
