//
//  BigSquareGridView.swift
//  HimTortons
//
//  Created by Nathaniel Bedggood on 09/09/2025.
//

import SwiftUI

struct SmallSquareGridView: View {
    
    
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 32) {
            VStack{
                VStack(alignment: .center) {
                    Image(systemName: "creditcard.fill")
                        .resizable()
                        .scaledToFit()
                        .padding(8)
                    //.frame(width: 100, height: 100)
                    
                }
                .padding()
                .background(.white)
                .cornerRadius(16)
                .aspectRatio(1, contentMode: .fit)
                .shadow(color: Color.black.opacity(0.05), radius: 32)
                
                Text("Hims Financial")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            
            
            VStack{
                VStack(alignment: .center) {
                    Image(systemName: "creditcard.fill")
                        .resizable()
                        .scaledToFit()
                        .padding(8)
                    //.frame(width: 100, height: 100)
                    
                }
                .padding()
                .background(.white)
                .cornerRadius(16)
                .aspectRatio(1, contentMode: .fit)
                .shadow(color: Color.black.opacity(0.05), radius: 32)
                
                Text("Hims Financial")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            VStack{
                VStack(alignment: .center) {
                    Image(systemName: "creditcard.fill")
                        .resizable()
                        .scaledToFit()
                        .padding(8)
                    //.frame(width: 100, height: 100)
                    
                }
                .padding()
                .background(.white)
                .cornerRadius(16)
                .aspectRatio(1, contentMode: .fit)
                .shadow(color: Color.black.opacity(0.05), radius: 32)
                
                Text("Hims Financial")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            VStack(alignment: .center) {
                VStack {
                    Image(systemName: "creditcard.fill")
                        .resizable()
                        .scaledToFit()
                        .padding(8)
                    //.frame(width: 100, height: 100)
                    
                }
                .padding()
                .background(.white)
                .cornerRadius(16)
                .aspectRatio(1, contentMode: .fit)
                .shadow(color: Color.black.opacity(0.05), radius: 32)
                
                Text("Hims Financial")
                    .font(.caption)
                    .fontWeight(.bold)
            }
        }
        .padding()
    }
}

#Preview {
    SmallSquareGridView()
}
