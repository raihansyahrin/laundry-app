//
//  ItemModel.swift
//  CustomTabBar
//
//  Created by raihansyahrin on 08/12/23.
//

import Foundation

class ItemModel: Identifiable, Codable{
    var ID = UUID()
    var photoItem : String
    var nameItem : String
    var priceItem : Int
    var countItem : Int
    
    init(ID: UUID = UUID(), photoItem: String, nameItem: String, priceItem: Int, countItem: Int) {
        self.ID = ID
        self.photoItem = photoItem
        self.nameItem = nameItem
        self.priceItem = priceItem
        self.countItem = countItem
    }
}
