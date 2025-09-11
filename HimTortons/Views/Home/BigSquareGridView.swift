//
//  BigSquareGridView.swift
//  HimTortons
//
//  Created by Nathaniel Bedggood on 09/09/2025.
//

import SwiftUI

struct BigSquareGridView: View {
    
    let userPoints: Int
    
    let columns = [
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible())
        ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 32) {
            VStack(alignment: .center) {
                HStack {
                    Text("Order")
                        .fontWeight(.bold)
                    Spacer()
                }
                Image("burger")
                    .resizable()
                    .scaledToFit()
                //.frame(width: 100, height: 100)
                Text("Start an Order for your Hims favourites.")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
            }
            .padding()
            .background(.white)
            .cornerRadius(12)
            .aspectRatio(1, contentMode: .fit)
            .shadow(color: Color.black.opacity(0.05), radius: 32)
            
            VStack(alignment: .center) {
                HStack {
                    Text("Rewards")
                        .fontWeight(.bold)
                    Spacer()
                }
                
                VStack {
                    Text(String(userPoints))
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.teal)
                    Text("Points")
                        .font(.caption)
                }
                .padding(8)
                Spacer()
                
                
                Text("Redeem your points for a reward!")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .frame(maxHeight: .infinity)
            .padding()
            .background(.white)
            .cornerRadius(12)
            .aspectRatio(1, contentMode: .fit)
            .shadow(color: Color.black.opacity(0.05), radius: 32)
        }
        .padding()
    }
}

#Preview {
    BigSquareGridView(userPoints: 698)
}
