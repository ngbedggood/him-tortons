//
//  DiscoveryCardData.swift
//  HimTortons
//
//  Created by Nathaniel Bedggood on 09/09/2025.
//

import Foundation

struct DiscoveryCardData: Identifiable {
    
    let id = UUID()
    let imageURL: String
    let title: String
    let caption: String
    let buttonText: String
    
}

let sampleData: [DiscoveryCardData] = [
        DiscoveryCardData(
            imageURL: "https://i.imgflip.com/9e4vwk.jpg",
            title: "Scan to Win is on!",
            caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            buttonText: "Scan now"
        ),
        DiscoveryCardData(
            imageURL: "https://i.pinimg.com/736x/2d/84/bd/2d84bdf4abd6f05f6efa07a5008d0d98.jpg",
            title: "Start your morning the right way",
            caption: "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
            buttonText: "Order now"
        ),
        DiscoveryCardData(
            imageURL: "https://i.pinimg.com/736x/ac/b7/d1/acb7d1499f4deed3d4ff246ab05aa70d.jpg",
            title: "Protein without all the work",
            caption: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
            buttonText: "Order now"
        ),
        DiscoveryCardData(
            imageURL: "https://media.tenor.com/1_rDlopCuOAAAAAe/nerd-dog-nerd.png",
            title: "Unlock an exclusive offer when you link with ABC",
            caption: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
            buttonText: "Link now"
        ),
        DiscoveryCardData(
            imageURL: "https://i.pinimg.com/736x/70/c9/20/70c920445f57f6c13cb19fb606789d91.jpg",
            title: "Using your points is rewarding",
            caption: "Track your balance and see what rewards are waiting!",
            buttonText: "View history"
        )
        
    ]
