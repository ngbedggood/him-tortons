//
//  BigSquareGridView.swift
//  HimTortons
//
//  Created by Nathaniel Bedggood on 09/09/2025.
//

struct smallSquareItem: Identifiable{
    let id: UUID = UUID()
    let icon: String
    let itemName: String
}

import SwiftUI

struct SmallSquareGridView: View {
    
    let items: [smallSquareItem] = [
        smallSquareItem(icon: "creditcard.fill", itemName: "Hims Financial"),
        smallSquareItem(icon: "tag.fill", itemName: "Offers"),
        smallSquareItem(icon: "moped.fill", itemName: "Delivery"),
        smallSquareItem(icon: "bag.fill", itemName: "HimShop"),
        smallSquareItem(icon: "heart.fill", itemName: "Community"),
        smallSquareItem(icon: "mail.and.text.magnifyingglass", itemName: "Hims Word Challenge"),
        smallSquareItem(icon: "gift.fill", itemName: "Give"),
        smallSquareItem(icon: "mappin.and.ellipse", itemName: "Restaurant Locator"),
        smallSquareItem(icon: "person.2.fill", itemName: "Join our team")
    ]
    
    let columns = [
            GridItem(.flexible(), spacing: 0),
            GridItem(.flexible(), spacing: 0),
            GridItem(.flexible(), spacing: 0),
            GridItem(.flexible(), spacing: 0)
        ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 8) {
            ForEach(items) { item in
                VStack{
                    VStack(alignment: .center) {
                        Image(systemName: item.icon)
                            .resizable()
                            .scaledToFit()
                            .padding(8)
                            .foregroundColor(.teal)
                            .frame(width: 50, height: 50)
                        
                    }
                    .padding(6)
                    .background(.white)
                    .cornerRadius(12)
                    .aspectRatio(1, contentMode: .fit)
                    .shadow(color: Color.black.opacity(0.05), radius: 32)
                    
                    Text(item.itemName)
                        .font(.caption)
                        .fontWeight(.bold)
                        .padding(.top, 4)
                    Spacer()
                }
            }
            
        }
        .multilineTextAlignment(.center)
    }
}

#Preview {
    SmallSquareGridView()
}
