//
//  OrderView.swift
//  HimTortons
//
//  Created by Nathaniel Bedggood on 09/09/2025.
//

import SwiftUI

struct OrderView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Text("This is the order view.")
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss() // Dismiss the current view
                    } label: {
                        Image(systemName: "chevron.backward") // Chevron icon
                    }
                    .fontWeight(.bold)
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        print("Not sure if this button actually does anything here?")
                    } label: {
                        Image(systemName: "bag.badge.plus.fill")
                            .foregroundColor(.black)
                    }
                    Button {
                        print("Toggle map view...")
                    } label: {
                        Image(systemName: "map")
                            .foregroundColor(.black)
                    }
                }
            }
    }
}

#Preview {
    OrderView()
}
