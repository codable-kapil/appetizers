//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Kapil Shivhare on 10/24/24.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 90)
                    .cornerRadius(8)
                    .padding()
            } placeholder: {
                Image("placeholder")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 90)
                    .cornerRadius(8)
                    .padding()
            }
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.primary)
                Text("$\(appetizer.price)")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
                Spacer().frame(height: 50)
            }
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: mockData)
}
