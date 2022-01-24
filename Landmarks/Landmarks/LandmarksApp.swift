//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Kyohei Sakamoto on 2022/01/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
