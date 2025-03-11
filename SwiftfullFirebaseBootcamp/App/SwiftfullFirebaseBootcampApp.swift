//
//  SwftfullFirebaseBootcampApp.swift
//  SwftfullFirebaseBootcamp
//
//  Created by Bruna Isabela Moreira Lanna on 09/03/25.
//

import SwiftUI
import Firebase

@main
struct SwiftfullFirebaseBootcampApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
