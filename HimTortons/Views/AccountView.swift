//
//  AccountView.swift
//  HimTortons
//
//  Created by Nathaniel Bedggood on 09/09/2025.
//

import SwiftUI

struct AccountView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Text("This is the account page.")
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss() // Dismiss the current view
                    } label: {
                        Image(systemName: "chevron.backward")
                        Text("Home")
                            .foregroundColor(.teal)
                    }
                    .fontWeight(.bold)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: ChatBotView()) {
                        Image(systemName: "ellipsis.message")
                            .foregroundColor(.black)
                    }
                }

            }
    }
}

#Preview {
    AccountView()
}
