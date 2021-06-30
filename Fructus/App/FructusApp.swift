//
//  FructusApp.swift
//  Fructus
//
//  Created by Andre Abtahi on 6/19/21.
//
//  Entry point of application

import SwiftUI

@main
struct FructusApp: App {
    
    //read/write data and watches value change!
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
            }
        }
    }
}
