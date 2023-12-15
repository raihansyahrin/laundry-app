//
//  ListLaundryViewModel.swift
//  CustomTabBar
//
//  Created by raihansyahrin on 08/12/23.
//

import Foundation

class ListLaundryViewModel: ObservableObject{
    @Published var item : [ItemModel] = []
    @Published var countCart = 0;
    
    init(){
        item = ItemBarang
    }
    
    func addItem(){
        countCart += 1
    }

    func removeItem(){
        if countCart > 0 {
                countCart -= 1
        } else {
            countCart = 0
        }
    }

    
    func calculatePrice() -> Int {
        let totalPrice = item.reduce(0) { $0 + ($1.priceItem * $1.countItem) }
        return totalPrice
    }
    
}

var ItemBarang = [
    ItemModel(photoItem: "t-shirt", nameItem: "T-Shirt", priceItem: 6, countItem: 1),
    ItemModel(photoItem: "jeans", nameItem: "Jeans", priceItem: 5, countItem: 1),
    ItemModel(photoItem: "jacket", nameItem: "Jacket", priceItem: 4, countItem: 1),
    ItemModel(photoItem: "t-shirt", nameItem: "Shirt", priceItem: 6, countItem: 1)
]
