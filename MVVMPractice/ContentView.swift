//
//  ContentView.swift
//  MVVMPractice
//
//  Created by 石崎汐音 on 2024/05/29.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        VStack {
            Toggle("Toggle Swich" , isOn: $vm.isTurnendOn )
                .padding()
            
            HStack{
                Button("Increment"){
                    vm.increment()
                }
                
                Text("\(vm.counter)")
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
            }
            
            List(vm.itemList){ item in
                HStack{
                    Text("\(item.name)")
                    Spacer()
                    Text("\(item.description)")
                }
            }
            .listStyle(.plain)
            .background(.thinMaterial)
            
            Button("add Item"){
                vm.addItem()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
