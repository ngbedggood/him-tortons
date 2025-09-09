//
//  CustomTabView.swift
//  HimTortons
//
//  Created by Nathaniel Bedggood on 09/09/2025.
//

import SwiftUI

enum Tab: CaseIterable {
    case home, scan, discover
}

struct CustomTabView: View {
    @State private var selectedTab: Tab = .home

    var body: some View {
        VStack(spacing: 0) {
            // Main content
            ZStack {
                switch selectedTab {
                case .home:
                    HomeView()
                case .scan:
                    Text("Scan")
                case .discover:
                    DiscoverView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            

            // Custom tab bar
            HStack {
                HStack(spacing: 0){
                    TabButtonView(
                        tab: .home,
                        icon: "house.fill",
                        label: "Home",
                        selectedTab: $selectedTab
                    )
                    TabButtonView(
                        tab: .scan,
                        icon: "qrcode.viewfinder",
                        label: "Scan",
                        selectedTab: $selectedTab
                    )
                    TabButtonView(
                        tab: .discover,
                        icon: "sparkles",
                        label: "Discover",
                        selectedTab: $selectedTab
                    )
                }
                .frame(maxWidth: 320)
            }
            //.padding()
            .frame(maxWidth: .infinity)
            .background(.white)

        }
        

    }
}

#Preview {
    CustomTabView()
}
