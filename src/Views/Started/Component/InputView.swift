//
//  InputView.swift
//  laundry-app
//
//  Created by raihansyahrin on 12/12/23.
//

import SwiftUI

struct CustomTextField: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 0.5)
                    .frame(height: 50)
            )
    }
}

struct InputView: View {
    @Binding var text: String
    let title: String
    let placeholder : String
    var isSecuredField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14){
            Text(title)
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.headline)
           
            if isSecuredField {
                SecureField(placeholder, text: $text)
                    .font(.system(size:16))
                    .textFieldStyle(CustomTextField())
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size:16))
                    .textFieldStyle(CustomTextField())
                     // Sesuaikan padding sesuai kebutuhan
                    
                
            }
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(text: .constant(""), title: "Email", placeholder: "name@example.com")
    }
}
