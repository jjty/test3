//
//  UserstatsView.swift
//  test3
//
//  Created by j g on 9/5/2022.
//

import SwiftUI

struct UserstatsView: View {
    var body: some View {
        HStack(spacing: 24){
            HStack(spacing: 4){
                Text("807")
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack(spacing: 4){
                
                Text("6.8M")
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserstatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserstatsView()
    }
}
