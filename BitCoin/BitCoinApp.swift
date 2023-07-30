//
//  BitCoinApp.swift
//  BitCoin
//
//  Created by Ambrose Mbayi on 30/07/2023.
//

import SwiftUI

@main
struct BitCoinApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
