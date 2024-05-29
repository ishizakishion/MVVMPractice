//
//  ContentViewModel.swift
//  MVVMPractice
//
//  Created by 石崎汐音 on 2024/05/29.
//

import Foundation
import SwiftUI


extension ContentView{
    
    @MainActor class ViewModel : ObservableObject {
        @Published var isTurnendOn : Bool = false
        @Published var counter = 0
        @Published var itemList = [Item]()
        
        func increment(){
            counter += 1
        }
        
        func addItem(){
            let randomItems = ["play","Xbox","Nintendo wii", "Swich"]
            let item = randomItems.randomElement()!
            let newItem = Item(name: item , description: "Item : \(itemList.count + 1 )")
            
            withAnimation {
                itemList.insert(newItem, at: 0)
            }
        }
    }
}



