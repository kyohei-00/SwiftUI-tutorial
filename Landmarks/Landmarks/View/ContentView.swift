//
//  ContentView.swift
//  Landmarks
//
//  Created by Kyohei Sakamoto on 2022/01/23 mint install swift-format.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection){
            CategoryHome()
                .tabItem{
                    Label("Featured",systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem{
                    Label("List",systemImage: "list.buillet")
                }
                .tag(Tab.list)
        }
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}

