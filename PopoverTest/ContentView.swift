//
//  ContentView.swift
//  PopoverTest
//
//  Created by Stuart Tevendale on 12/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingPopover = false
    
    var body: some View {
        Text("Popover Test")
        .toolbar {
            ToolbarItem() {
                Button(action: {showingPopover = true}) {
                    Image(systemName: "list.bullet.rectangle.portrait.fill")
                }
                .popover(isPresented: $showingPopover) {
                    PopoverView()
                }
            }
            
        }
    }
}

struct PopoverView: View {

    @State var testData = ["one", "two", "three", "four"]
    
    var body: some View {
        VStack() {
            Button(action: {}) {
                Text("Button 1")
            }
            .padding(10)
            List(testData, id: \.self) { item in
                Text(item)
            }
        }
// Uncomment the following line to fix the issue
//        .frame(width: 222, height: 200)
    }
}
