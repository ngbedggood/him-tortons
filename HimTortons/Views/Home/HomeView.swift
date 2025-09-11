//
//  HomeView.swift
//  HimTortons
//
//  Created by Nathaniel Bedggood on 09/09/2025.
//

import SwiftUI

struct HomeView: View {
    
    let displayName: String = "Nathaniel"
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            ZStack {
                VStack {
                    Rectangle()
                        .fill(.white)
                        .frame(height: 120)
                    Rectangle()
                        .fill(.tan)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                VStack(spacing: 0) {
                    HStack {
                        VStack(alignment: .leading){
                            Text("Good afternoon,")
                            Text("\(displayName).")
                        }
                        .font(.title2)
                        .fontWeight(.bold)
                        Spacer()
                    }
                    .padding([.leading, .bottom], 16)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            HorizontalScrollCardView(
                                title: "Scan to Win is on!",
                                caption: "Every scan is a chance to win your share of the grand prize: 10M points.",
                                image: Image(systemName: "party.popper")
                            )
                            HorizontalScrollCardView(
                                title: "NEW Protein Lattes",
                                caption: "Order now and get 17-20g of protein per Medium Hot or Iced Protein Latte.",
                                image: Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                            )
                            HorizontalScrollCardView(
                                title: "Discover",
                                caption: "See what's brewing at Hims. Get the latest news, games, and more!",
                                image: Image(systemName: "cup.and.saucer.fill")
                            )
                        }
                        .padding(.leading, 16)
                    }
                    //.padding(.leading, 16)
                    
                    BigSquareGridView(userPoints: 698)
                    
                    SmallSquareGridView()
                        .padding([.leading, .trailing], 16)
                }
                
                //.background(.red)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    HomeView()
}
