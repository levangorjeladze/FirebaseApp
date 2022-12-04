//
//  FirebaseAppApp.swift
//  FirebaseApp
//
//  Created by Levan Gorjeladze on 28.11.22.
//

import SwiftUI
import Firebase

@main
struct FirebaseAppApp: App {
    @StateObject var dataManager = DataManager()
    
    init (){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
        ListView()
                .environmentObject(dataManager)
        }
    }
}
