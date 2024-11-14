//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Kapil Shivhare on 9/6/24.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case invalidData
    case invalidResponse
    case unableToComplete
}

class NetworkManager {
    
    static let shared = NetworkManager()
    static let endpointURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/appetizers"
    
    func getAppetizers(completed: @escaping (Result<[Appetizer], NetworkError>) -> Void) {
        
        guard let url = URL(string: Self.endpointURL) else {
            completed(.failure(NetworkError.invalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let appetizers = try JSONDecoder().decode(AppetizerResponse.self, from: data)
                completed(.success(appetizers.request))
            } catch {
                completed(.failure(.unableToComplete))
            }
        }.resume()
    }
}
