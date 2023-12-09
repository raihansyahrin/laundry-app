//
//  DetailsOrderView.swift
//  CustomTabBar
//
//  Created by raihansyahrin on 06/12/23.
//

import SwiftUI

struct DetailsOrderView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var btnBack : some View { Button(action: {
           self.presentationMode.wrappedValue.dismiss()
           }) {
               HStack {
                   Image(systemName: "arrow.backward") // set image here
                       .aspectRatio(contentMode: .fit)
                       .foregroundColor(.black)
                       .font(.system(size: 25))
                
               }
           }
       }
    let statusLaundry: String
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack{
//                    Spacer(minLength: 90)
                    Image(systemName: "washer")
                        .resizable()
                        .foregroundColor(.blue)
                        .frame(width: 80, height: 80)
                        .background(Circle()
                            .fill(.thinMaterial)
                            .frame(width: 150, height: 150))
                    
                    Spacer()
                    
                    VStack{
                        Text("Your clothes are still cleaning.")
                        Text("will be finished soon.")
                    }
                    .bold()
                    .font(.system(size: 18))
                    .padding(.top, 50)
                    .padding(.bottom, 25)
//                    Spacer()
                    //status
                    VStack(alignment: .center, spacing: -5){
                        HStack(spacing: -5) {
                            Image(systemName: "checkmark.circle.fill")
                                .font(.system(size: 45))
                                .foregroundColor(.blue)
                                .fontWeight(.light)
                            
                            
                            HorizontalLine()
                                .stroke(Color.blue, lineWidth: 3)
                                .frame(width: 50, height: 10)
                            
                            
                            Image(systemName: "tropicalstorm.circle")         .font(.system(size: 45))
                                .foregroundColor(.blue)
                                .fontWeight(.light)

                            DashedHorizontalLine()
                                .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                                .frame(width: 50, height: 10)
                                .foregroundColor(Color(.systemGray4))
                            
                            Image(systemName: "line.3.crossed.swirl.circle")
                                .font(.system(size: 45))
                                .foregroundColor(Color(.systemGray3))
                                .fontWeight(.light)
                            
                            DashedHorizontalLine()
                                .stroke(style: StrokeStyle(lineWidth: 2, dash: [6]))
                                .frame(width: 50, height: 10)
                                .foregroundColor(Color(.systemGray4))
                            
                            Image(systemName: "bicycle.circle")
                                .font(.system(size: 45))
                                .foregroundColor(Color(.systemGray3))
                                .fontWeight(.light)
                            
                        }
                        .padding()
                        
                        HStack{
                            Text("Washing")
                            Spacer()
                            Text("Cleaning")
                            Spacer()
                            Text("Drying")
                                .padding(.trailing, 10)
                                .foregroundColor(Color(.systemGray2))
                            
                            Spacer()
                            Text("Deliver")
                                .foregroundColor(Color(.systemGray2))
                        }
                        .padding(.trailing, 32)
                        .padding(.leading, 27)
                        .font(.system(size: 14))
                    }
                    
                    //information
                    HStack{
                        Text("#2132414351")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text(statusLaundry)
                            .font(.system(size: 16))
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width: 95, height:30)
                            .background(statusLaundry == "Completed" ? Color.green : Color.yellow)
                            .clipShape(Capsule())
                    }
                    .padding()
                    
                    HStack{
                        VStack(alignment: .leading, spacing: 25){
                            Text("laundry in")
                            Text("Delivery address")
                            Text("Estimated time")
                        }
                        .foregroundColor(Color(.systemGray))
                        
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 15){
                            Text("December 7,2023/07.35 pm")
                            Text("Jl.Sukabirus Kos.H Kasum Pondok A4")
                            Text("Finish in 1 days")
                        }
                    }
                    .padding()
                    
                }
                .padding(.top, 60)
            }
            .navigationBarBackButtonHidden(true)
            .navigationTitle("Details Order")            
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: btnBack)
            .toolbar{
                Button{
                    print("Hello")
                }label: {
                    Image(systemName: "ellipsis.circle")
                        .foregroundColor(.black)
                        .font(.system(size: 25))
                }
            }
        }
    }
}

struct DashedHorizontalLine: Shape {
    let dashLength: CGFloat = 3 // Panjang garis putus-putus
    let dashGap: CGFloat = 3 // Jarak antara garis putus-putus

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let startPoint = CGPoint(x: rect.minX, y: rect.midY)
        let endPoint = CGPoint(x: rect.maxX, y: rect.midY)

        path.move(to: startPoint)

        var currentX = startPoint.x
        var shouldDrawDash = true

        while currentX < endPoint.x {
            if shouldDrawDash {
                path.addLine(to: CGPoint(x: currentX + dashLength, y: rect.midY))
            } else {
                path.move(to: CGPoint(x: currentX + dashGap, y: rect.midY))
            }

            currentX += dashLength + dashGap
            shouldDrawDash.toggle()
        }

        return path
    }
}


struct HorizontalLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        return path
    }
}

struct DetailsOrderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsOrderView(statusLaundry: "Ongoing")
            .navigationBarBackButtonHidden(true)
    }
}
