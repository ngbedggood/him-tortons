//
//  SpecialNavBar.swift
//  HimTortons
//
//  Created by Nathaniel Bedggood on 09/09/2025.
//

import SwiftUI

struct SpecialNavBar: ViewModifier {

    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font: UIFont(name: "Georgia-Bold", size: 20)!]
    }

    func body(content: Content) -> some View {
        content
    }

}

extension View {

    func specialNavBar() -> some View {
        self.modifier(SpecialNavBar())
    }

}
