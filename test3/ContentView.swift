//
//  ContentView.swift
//  test3
//
//  Created by j g on 9/5/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group{
            if viewModel.userSession == nil {
                LoginView()
            } else {
               mainInterFaceView
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        ContentView()
    }
}
}
    extension ContentView {
        var mainInterFaceView: some View {
            
            ZStack(alignment: .topLeading){
                MainTabView()
                    .navigationBarHidden(showMenu)
                
                if showMenu {
                    ZStack{
                        Color(.black)
                            .opacity(0.25)
                    } .onTapGesture{
                        withAnimation(.easeInOut){
                            showMenu = false
                        }
                    }
                    .ignoresSafeArea()
                }
                
                SideMenuView()
                    .frame(width: 300)
                    .offset(x: showMenu ? 0: -300, y: 0)
                    .background(showMenu ? Color.white : Color.clear)
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button {
                        withAnimation(.easeInOut){
                        showMenu.toggle()
                        }
                    } label: {
                        Circle()
                            .frame(width: 32, height: 32)
                    }
                }
            }
            .onAppear(){
                showMenu = false
            
        }
    }
    }
