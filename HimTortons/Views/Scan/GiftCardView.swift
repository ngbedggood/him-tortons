//
//  GiftCardView.swift
//  HimTortons
//
//  Created by Nathaniel Bedggood on 25/09/2025.
//

import SwiftUI

struct GiftCardView: View {
    var body: some View {
        VStack {
            Text("Tim Card")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Text("Scan to pay will become available after your first digital purchase, or by transferring in a Tims Gift Card balance")
                .multilineTextAlignment(.center)
            
            Button{
                print("action")
            } label: {
                Text("Get Started")
                    .foregroundColor(.teal)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        Capsule()
                            .stroke(.teal, lineWidth: 1)
                            .frame(maxWidth: .infinity, maxHeight: 40)
                    )
                    .padding()
            }
            Text("Transfer balance from another Tims Gift Card")
                .foregroundColor(.teal)
                .fontWeight(.bold)
            Spacer()
        }
    }
}

#Preview {
    GiftCardView()
}
