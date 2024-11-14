//
//  AppetizersViewModel.swift
//  Appetizers
//
//  Created by Kapil Shivhare on 10/24/24.
//

import Foundation

class AppetizersViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
    
}
