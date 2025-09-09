//
//  DiscoverCardView.swift
//  HimTortons
//
//  Created by Nathaniel Bedggood on 09/09/2025.
//

import SwiftUI

struct DiscoverCardView: View {
    
    let imageUrl: String
    let title: String
    let caption: String
    let buttonType: String
    
    var body: some View {
        VStack(spacing: 0) {
            AsyncImage(url: URL(string: imageUrl)) { image in
                image.resizable()
            } placeholder: {
                Color.red
            }
            .scaledToFill()
            .frame(height: 150)
            .clipped()
            
            VStack(alignment: .leading, spacing: 12) {
                Text(title)
                    .font(.headline)
                Text(caption)
                    .font(.caption)
                Button {
                    print("Button pressed.")
                } label : {
                    Text(buttonType)
                        .fontWeight(.bold)
                        .padding(12)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .strokeBorder(lineWidth: 1)
                        )
                        .foregroundStyle(.teal)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.white)
            
        }
        .background(.white)
        .cornerRadius(16)
        .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)
        .padding(.bottom, 8)
    }
}

#Preview {
    DiscoverCardView(
        imageUrl: "https://i.imgflip.com/9e4vwk.jpg",
        title: "Scan to Win is on!",
        caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        buttonType: "Scan now"
    )
}
