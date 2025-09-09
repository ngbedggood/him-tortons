//
//  ContentView.swift
//  HimTortons
//
//  Created by Nathaniel Bedggood on 09/09/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            CustomTabView()
                //.navigationTitle("Dashboard")
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        NavigationLink(destination: OrderView()) {
                            Image(systemName: "bag.badge.plus.fill")
                                .foregroundColor(.black)
                        }
                        NavigationLink(destination: AccountView()) {
                            Image(systemName: "person.circle")
                                .foregroundColor(.black)
                        }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
