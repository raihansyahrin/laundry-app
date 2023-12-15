//
//  StartedView.swift
//  laundry-app
//
//  Created by raihansyahrin on 12/12/23.
//

import SwiftUI

struct StartedView: View {
    var body: some View {
        NavigationStack{
            VStack(spacing: -10){
            
                Image("get-started")
                    .background(.white)

                
                VStack(alignment: .leading, spacing: 40){
                    
                    Text("The best solution for cleaning your clothes")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                        .fontWeight(.semibold)
                        .lineLimit(nil)
                    
                    
                    Text("Find the best and closest laundry place to you. cleaned with the best washing machine so it doesn't reduce the quality of your clothes")
                        .foregroundColor(.white)
                        .font(.title3)
                    
                }
    //            .padding(.top, -10)
                .padding(.horizontal, 30)
                
                Spacer()
                
                HStack{
                    NavigationLink{
                        LoginView()
                            .navigationBarBackButtonHidden(true)
                    }label: {
                        Text("Get started")
                            .foregroundColor(Color(red: 51 / 255, green: 171 / 255, blue: 239 / 255))
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(width: UIScreen.main.bounds.width - 60, height: 60)
                            .background(Color.white)
                            .cornerRadius(10.0)
                            .padding()
                    }
                }
                Spacer()

            }
    //        .padding(0)
            .background(Color(red: 51 / 255, green: 171 / 255, blue: 239 / 255))
            .edgesIgnoringSafeArea(.all)
    //        .ignoresSafeArea()
        }
        }
        
}

struct StartedView_Previews: PreviewProvider {
    static var previews: some View {
        StartedView()
    }
}
