//
//  DiscoverView.swift
//  HimTortons
//
//  Created by Nathaniel Bedggood on 09/09/2025.
//

import SwiftUI

struct DiscoverView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HStack {
                        Text("Explore what's new")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    ForEach(sampleData) { cardData in
                        DiscoverCardView(
                            imageUrl: cardData.imageURL,
                            title: cardData.title,
                            caption: cardData.caption,
                            buttonType: cardData.buttonText
                        )
                    }
                }
                .padding()
                //.padding(.top, 0)
            }
            .background(.tan)
        }
        .navigationTitle("Discover")
        .navigationBarTitleDisplayMode(.automatic)
    }
}

#Preview {
    DiscoverView()
}
