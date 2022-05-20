//
//  AuthViewModel.swift
//  test3
//
//  Created by j g on 19/5/2022.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    
    @Published var userSession: Firebase.User?
    
    init(){
        self.userSession = Auth.auth().currentUser
        
        print("Debug: user session is \(self.userSession)")
    }
    
    func login(withEmail email: String, password: String){
        print("Debug: Login with email \(email)")
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String){
        print("debug: register with email \(email)")
    }
}
