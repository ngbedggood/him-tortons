//
//  HorizontalScrollCardView.swift
//  HimTortons
//
//  Created by Nathaniel Bedggood on 09/09/2025.
//

import SwiftUI

struct HorizontalScrollCardView: View {
    let title: String
    let caption: String
    let image: Image
    
    var body: some View {
        HStack(alignment: .center) {
            image
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .foregroundColor(.teal)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                
                Text(caption)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .padding(2)
            
            Image(systemName: "chevron.right")
        }
        .padding()
        .frame(width: 310, height: 110)
        .background(.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.05), radius: 32)
    }
}

#Preview {
    HorizontalScrollCardView(
        title: "Discover",
        caption: "See what's brewing at Hims. Get the latest news, games, and more!",
        image: Image(systemName: "person.circle")
    )
}
