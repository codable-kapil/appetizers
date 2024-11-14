//
//  AppetizerButton.swift
//  Appetizers
//
//  Created by Kapil Shivhare on 10/26/24.
//

import SwiftUI

struct AppetizerButton: View {
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(12.0)
    }
}

#Preview {
    AppetizerButton(title: "title")
}
