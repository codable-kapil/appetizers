//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Kapil Shivhare on 10/25/24.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 225)
            } placeholder: {
                Image("placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 225)
            }
            
            VStack {
                Text("\(appetizer.name)")
                    .multilineTextAlignment(.center)
                    .font(.title.bold())
                
                Text("\(appetizer.description)")
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
            }
            
            Spacer()
            
            HStack(spacing: 20) {
                NutritionInfo(title: "Protien", value: appetizer.protein)
                NutritionInfo(title: "Calories", value: appetizer.calories)
                NutritionInfo(title: "Carbs", value: appetizer.carbs)
            }
            
            Spacer()
            
            Button {
                order.add(appetizer)
                isShowingDetail = false
            } label: {
                AppetizerButton(title: "$\(appetizer.price.formatted()) - Add to Order")
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 520)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 30)
        .overlay(Button(action: {
            isShowingDetail = false
        }, label: {
            DismissButton()
        }), alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: mockData, isShowingDetail: .constant(true))
}

struct NutritionInfo: View {
    let title: String
    let value: Int
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .fontWeight(.semibold)
                
            Text("\(value)")
                .foregroundColor(.secondary)
        }
    }
}
