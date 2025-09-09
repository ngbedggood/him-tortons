//
//  TabButtonView.swift
//  HimTortons
//
//  Created by Nathaniel Bedggood on 09/09/2025.
//

import SwiftUI

struct TabButtonView: View {
    let tab: Tab
    let icon: String
    let label: String

    @Binding var selectedTab: Tab
    @State private var isPressed: Bool = false

    var body: some View {
        VStack(spacing: 8) {
            Rectangle()
                .fill(selectedTab == tab ? Color.teal: Color.clear)
                .frame(maxWidth: .infinity, maxHeight: 4)
            VStack(spacing: 4) {
                Image(systemName: icon)
                    .font(.system(size: 20, weight: .semibold))
                Text(label)
                    .font(.caption)
                    .fontWeight(.bold)
            }
            .opacity(isPressed ? 0.6 : 1)
        }
        .foregroundColor(selectedTab == tab ? .teal : .black)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .contentShape(Rectangle())
        .gesture(
            DragGesture(minimumDistance: 0)
                .onChanged { _ in
                    if !isPressed { isPressed = true }
                }
                .onEnded { _ in
                    isPressed = false
                    selectedTab = tab
                }
        )
    }
}

#Preview {
    StatefulPreviewWrapper(Tab.home) { selection in
            TabButtonView(
                tab: .home,
                icon: "house.fill",
                label: "Home",
                selectedTab: selection
            )
            .padding()
        }
}
