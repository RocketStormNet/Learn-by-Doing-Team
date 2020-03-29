//
//  ContentView.swift
//  Learn by Doing Team
//
//  Created by Artur Shamsutdinov on 29.03.2020.
//  Copyright © 2020 Artur Shamsutdinov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var cards: [Card] = cardData
    
    // MARK: - CONTENT
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            }
        .padding(20)
        }
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardData)
        .previewDevice("iPhone 7")
    }
}
