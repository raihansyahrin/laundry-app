//
//  RegistrationView.swift
//  laundry-app
//
//  Created by raihansyahrin on 12/12/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
//    @EnvironmentObject var viewModel : AuthViewModel
    
    var body: some View {
        NavigationStack{
            VStack{
//                Spacer()
                HStack(alignment: .lastTextBaseline){
                    Spacer()
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }
                .padding(.trailing)
    //            .padding(.vertical, 10)


//                Spacer()
                
                VStack(alignment: .leading, spacing: 40){
                    
                    VStack(alignment: .leading, spacing: 15){
                        Text("Register")
                            .font(.system(size: 35))
                            .fontWeight(.semibold)
                        
                        Text("Create new account for you")
                            .font(.system(size: 18))
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    
                  
                        
                    
                    VStack(spacing: 30){
                        InputView(text: $name , title: "Name", placeholder: "Enter your name")
                          
                        
                        InputView(text: $email , title: "Email", placeholder: "name@example.com")
                            .autocapitalization(.none)
                        
                        InputView(text: $password,
                                  title: "Password",
                                  placeholder: "Enter your password",
                                  isSecuredField: true)
                        
                    }
                    .padding(.bottom, 40)
                    
                    
            
                    
     
                }
                
                VStack(spacing: 20){
                    NavigationLink{
//                        Task{
//                            try await viewModel.signIn(withEmail: email, password:  password)
//                        }
                        DashboardView()
                            .navigationBarBackButtonHidden(true)
                    }label: {
                        HStack{
                            Text("Register")
                        }
                        .font(.title2)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 70)
                    }
                    .background(Color(red: 51 / 255, green: 171 / 255, blue: 239 / 255))
                    .cornerRadius(10)
                    .padding(.top, 24)
                    
                    
                }
               
                Spacer()
                HStack(alignment: .center){
                    Spacer()
                    NavigationLink{
                        LoginView()
                            .navigationBarBackButtonHidden(true)
                    }label: {
                        HStack(spacing: 2){
                            Text("Already have an account?")
                            Text("Login")
                                .fontWeight(.bold)
                        }
                        .font(.system(size: 14))
                    }
                    Spacer()
                }
//                    Spacer()
            }
           
            .padding(.horizontal)
//            .padding(.top, 12)
 
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
