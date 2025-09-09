//
//  DiscoverView.swift
//  HimTortons
//
//  Created by Nathaniel Bedggood on 09/09/2025.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        ScrollView{
            HStack {
                Text("Explore what's new")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
            }
            ForEach(0..<4) { _ in
                DiscoverCardView(
                    imageUrl: "https://i.imgflip.com/9e4vwk.jpg",
                    title: "Scan to Win is on!",
                    caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    buttonType: "Scan now"
                )
            }
        }
        .padding()
        .background(.tan)
    }
}

#Preview {
    DiscoverView()
}
