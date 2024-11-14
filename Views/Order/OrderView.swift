//
//  OrderView.swift
//  Appetizers
//
//  Created by Kapil Shivhare on 9/6/24.
//

import SwiftUI

struct OrderView: View {
    
    @State var appetizers: [Appetizer]?
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            VStack {
                    
                List {
                    ForEach(order.items) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: { indexSet in
                        order.remove(at: indexSet)
                    })
                }
                .listStyle(.plain)
                
                AppetizerButton(title: "$\(order.totalPrice.formatted()) - Place Order")
                    .padding(.bottom, 30)
            }
            .navigationTitle("💰 Orders")
        }
    }
}

#Preview {
    OrderView()
}
