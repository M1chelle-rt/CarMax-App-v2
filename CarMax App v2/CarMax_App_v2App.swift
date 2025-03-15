//
//  CarMax_App_v2App.swift
//  CarMax App v2
//
//  Created by Michelle Thomas on 3/14/25.
//

import SwiftUI

@main
struct CarMax_App_v2App: App {
    @StateObject var carmax = CarmaxApp()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(carmax)
        }
    }
}
