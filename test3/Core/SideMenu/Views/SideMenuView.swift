//
//  SideMenuView.swift
//  test3
//
//  Created by j g on 9/5/2022.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            VStack(alignment: .leading){
                Circle()
                    .frame(width: 48, height: 48)
                
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("bruce wyan")
                        .font(.headline)
                
                
                Text("@batman")
                    .font(.caption)
                    .foregroundColor(.gray)
                }
                
                UserstatsView()
                    .padding(.vertical)
            }
            .padding(.leading)
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { viewModel in
                
                if viewModel == .profile {
                    NavigationLink{
                        ProfileView()
                    } label: {
                       SideMenuOptionRowView(viewModel: viewModel)
                    }
                } else if viewModel == .logout {
                    Button{
                        print("handle logout here..")
                    } label: {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                    
                } else {
                    SideMenuOptionRowView(viewModel: viewModel)
                }
                
              
            }
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}


