//
//  FeedView.swift
//  test3
//
//  Created by j g on 9/5/2022.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            ScrollView{
                LazyVStack{
                    ForEach(0 ... 20, id: \.self){ _ in
                        TweetsRowView()
                            .padding()
                    }
                }
            }
            
            Button{
                showNewTweetView.toggle()
            } label: {
                Image(systemName: "person")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView){
                Text("new tweet view")
            }
            
        }
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
