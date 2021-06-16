//
//  fructus_swiftuiApp.swift
//  fructus-swiftui
//
//  Created by Jason Prosia on 03/06/21.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnBoardingView()
            }else{
                ContentView()
            }
        }
    }
}
