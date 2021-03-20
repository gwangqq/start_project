//
//  StartProjectApp.swift
//  StartProject
//
//  Created by 박광규 on 2021/03/16.
//

import SwiftUI

@main
struct StartProjectApp: App {
    // To use Order.swift you have to add @StateObject
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
