//
//  test3App.swift
//  test3
//
//  Created by j g on 9/5/2022.
//

import SwiftUI
import Firebase

@main
struct test3App: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
                
            }
            .environmentObject(viewModel)

            
        }
    }
}
