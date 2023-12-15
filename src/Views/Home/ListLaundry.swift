//
//  ListLaundry.swift
//  CustomTabBar
//
//  Created by raihansyahrin on 08/12/23.
//

import SwiftUI

struct ListLaundry: View {
    @ObservedObject var vm = ListLaundryViewModel()
    
    var body: some View {
        ForEach(vm.item){item in
            HStack(spacing: 20){
                Image(item.photoItem)
                    .resizable()
                    .foregroundColor(.blue)
                    .font(.system(size: 30))
                    .scaledToFit()
                    .background(.gray)
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading){
                    Text(item.nameItem)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                    Text("\(item.priceItem) k")
                        .foregroundColor(.black)
                }
                
                Spacer()
                
                Button{
                    vm.removeItem()
                }label: {
                    Image(systemName: "minus.circle")
                        .font(.system(size: 30))
                        .fontWeight(.ultraLight)
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                    
                }
                
                
                Text("\(vm.countCart)")
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                
                
                Button{
                    vm.addItem()
                    
                }label: {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 30))
                        .fontWeight(.ultraLight)
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                }
                
                
            }
            .padding()
            .frame(width: UIScreen.main.bounds.width - 30, height: 80)
            .background(Color.white)
            .cornerRadius(20.0)
        }
    }
}

struct ListLaundry_Previews: PreviewProvider {
    static var previews: some View {
        ListLaundry()
    }
}
