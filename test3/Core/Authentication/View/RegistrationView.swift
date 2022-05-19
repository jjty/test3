//
//  RegistrationView.swift
//  test3
//
//  Created by j g on 10/5/2022.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var userName = ""
    @State private var fullName = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack{
            
            AuthHeaderView(title1: "Get started", title2: "Create your account")
            
            VStack(spacing: 40){
                CustomTextField(imageName: "envelope", placeholderText: "Email", text:  $email)
                
                CustomTextField(imageName: "person", placeholderText: "Username", text: $userName)
                
                CustomTextField(imageName: "person", placeholderText: "Full Name", text:  $fullName)
                
                CustomTextField(imageName: "lock", placeholderText: "Password", text: $password)
            }
            .padding(32)
            
            Button{
                print("sign up here..")
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray, radius: 100, x: 0, y: 0)
            
            Spacer()
            
            NavigationLink{
                LoginView()
                    .navigationBarHidden(true)
            } label: {
                HStack{
                    Text("Already have an account?")
                        .font(.footnote)
                    
                    Text("Sign In?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                       
                }
            }
            .foregroundColor(Color(.systemBlue))
            .padding(.bottom, 32)
            
            
        }
        .ignoresSafeArea()

        
        
    }

}
struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
    

