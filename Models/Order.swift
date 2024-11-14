//
//  Order.swift
//  Appetizers
//
//  Created by Kapil Shivhare on 10/27/24.
//

import Foundation

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizer) {
        self.items.append(appetizer)
    }
    
    func remove(at offset: IndexSet) {
        self.items.remove(atOffsets: offset)
    }
}
