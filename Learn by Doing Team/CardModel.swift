//
//  CardModel.swift
//  Learn by Doing Team
//
//  Created by Artur Shamsutdinov on 29.03.2020.
//  Copyright © 2020 Artur Shamsutdinov. All rights reserved.
//

import SwiftUI

// MARK: - CARD MODEL

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
