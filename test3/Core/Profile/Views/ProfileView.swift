//
//  ProfileView.swift
//  test3
//
//  Created by j g on 9/5/2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Environment(\.presentationMode) var mode
    @Namespace var animation
    var body: some View {
        VStack(alignment: .leading){
            headerView
            actionsButtons
            userInfoDetails
            tweetFilterBar
            tweetsView
            
       
            
            
          Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


extension ProfileView{
    var headerView: some View{
        ZStack(alignment: .bottomLeading){
            Color(.systemBlue)
                .ignoresSafeArea()
            
            
            VStack{
                Button{
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x: 16, y: 12)
                }
            
            
            Circle()
                .frame(width: 72, height: 72)
                .offset(x: 16, y: 24)
        }
        }
        .frame(height: 96)

    }
    
    var actionsButtons: some View{
        HStack(spacing: 12){
         Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            Button{
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }
        }
        .padding(.trailing)
    }
    
    var userInfoDetails: some View {
        VStack(alignment: .leading, spacing: 4){
            HStack{
                Text("heath Leger")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            
            Text("@Joker")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("your mums favorite villan")
                .font(.subheadline)
                .padding(.vertical)
            
            
            HStack{
                HStack(spacing: 24){
                    Image(systemName: "mappin.and.ellipse")
                    
                    Text("gotham, NY")
                }
                
                HStack{
                    Image(systemName: "link")
                    Text("www.joker.com")
                }
            }
            
            .font(.caption)
            .foregroundColor(.gray)
            
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
            .padding(.vertical)
            
        }
        .padding(.horizontal)
    }
    
    
    var tweetFilterBar: some View {
        HStack{
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue) { item in
                VStack{
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)
                    
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    } else{
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                    }
                }
                
                .onTapGesture{
                    withAnimation(.easeInOut){
                        self.selectedFilter = item
                    }
                }
            }
        }
    }
    
    var tweetsView: some View {
        ScrollView{
            LazyVStack{
                ForEach(0 ... 9, id: \.self) { _ in
                    TweetsRowView()
                }
                .padding()
            }
        }
    }
    
}
