//
//  ContentView.swift
//  Appetizers
//
//  Created by Kapil Shivhare on 9/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Orders")
                }
                .badge(order.items.count)
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
        }
    }
}

#Preview {
    ContentView()
}
