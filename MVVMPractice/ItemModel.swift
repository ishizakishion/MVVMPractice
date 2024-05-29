//
//  ItemModel.swift
//  MVVMPractice
//
//  Created by 石崎汐音 on 2024/05/29.
//

import Foundation

struct Item : Identifiable,Codable{
    var id = UUID()
    var name : String
    var description : String
    
    static var exampleItem = Item(name: "xbox", description: "Sample description")
}
