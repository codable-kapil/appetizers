//
//  Appetizer.swift
//  Appetizers
//
//  Created by Kapil Shivhare on 9/6/24.
//

import Foundation

struct Appetizer: Identifiable, Decodable {
    let id: Int
    let name: String
    let imageURL: String
    let price: Double
    let description: String
    let protein: Int
    let carbs: Int
    let calories: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

let mockData = Appetizer(id: 999, name: "Dosa and Idly",
                         imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/chicken-avocado-spring-roll.jpg",
                         price: 9.99,
                         description: "Dosa and Idly bahut accha ji",
                         protein: 9,
                         carbs: 0,
                         calories: 80)
