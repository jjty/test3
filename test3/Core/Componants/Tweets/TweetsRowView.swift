//
//  TweetsRowView.swift
//  test3
//
//  Created by j g on 9/5/2022.
//

import SwiftUI

struct TweetsRowView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                // user info and tweet caption
                VStack(alignment: .leading, spacing: 4){
                    HStack{
                        Text("bruce wayne")
                            .font(.subheadline).bold()
                        
                        Text("batman")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    
                    Text("i believe in harvet dent")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    
                }
                
            }
        
        // action buttons
            HStack{
                Button{
                    
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                
                
                Spacer()
                
                
                Button{
                    
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                
                Spacer()

                
                Button{
                    
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()

                
                Button{
                    
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding()
            .foregroundColor(.gray)
            
            Divider()
        }
    }
}

struct TweetsRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetsRowView()
    }
}
