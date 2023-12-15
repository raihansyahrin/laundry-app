//
//  LoginView.swift
//  laundry-app
//
//  Created by raihansyahrin on 12/12/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
//    @Binding var isLoggedIn: Bool = true
    @EnvironmentObject var appState : AppState
    
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
                        Text("Let's get started")
                            .font(.system(size: 35))
                            .fontWeight(.semibold)
                        
                        Text("Login into your account")
                            .font(.system(size: 18))
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)

                    }
                    
                  
                        
                    
                    VStack(spacing: 30){
                        InputView(text: $email , title: "Email", placeholder: "name@example.com")
                            .autocapitalization(.none)
                        
                        InputView(text: $password,
                                  title: "Password",
                                  placeholder: "Enter your password",
                                  isSecuredField: true)
                        
                        HStack(alignment: .lastTextBaseline){
                            Spacer()
                            Button("Forgot password?"){
                                
                            }
                                
                        }
                    }
                    
                    
                    
                    
     
                }
                
                VStack(spacing: 20){
                    NavigationLink{
//                        Task{
//                            try await viewModel.signIn(withEmail: email, password:  password)
//                        }
//                        appState.hasOnboarded = true
                        DashboardView()
                            .navigationBarBackButtonHidden(true)
                       
                        
                    }label: {
                        HStack{
                            Text("Login")
                        }
                        .font(.title2)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 70)
                    }
                    .background(Color(red: 51 / 255, green: 171 / 255, blue: 239 / 255))
                    .cornerRadius(10)
                    .padding(.top, 24)
                    
                    Text("Or login with account")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                    HStack{
                        HStack{
                            Image("google-logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                            
                            Text("Google")
                        }
                        .frame(width: 170, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 0.3)
                        )
                        
                        Spacer()
                   
                        HStack{
                            Image("facebook-logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                            
                            Text("Facebook")
                        }
                        .frame(width: 170, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 0.3)
                        )
                            
                    }
                    
                  
                    
                    
                }
               
                Spacer()
                HStack(alignment: .center){
                    Spacer()
                    NavigationLink{
                        RegistrationView()
                            .navigationBarBackButtonHidden(true)
                    }label: {
                        HStack(spacing: 2){
                            Text("Don't have an account?")
                            Text("Register")
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
