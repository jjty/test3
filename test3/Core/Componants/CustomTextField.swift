//
//  CustomTextField.swift
//  test3
//
//  Created by j g on 18/5/2022.
//

import SwiftUI

struct CustomTextField: View {
    let imageName: String
    let placeholderText: String
    @Binding var text: String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.systemGray))
                
                    TextField(placeholderText, text: $text)
                
                    
            }
            
            Divider()
                .background(Color(.systemGray))
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(imageName: "envelope",
                        placeholderText: "Email",
                        text: .constant(""))
    }
}
