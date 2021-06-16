//
//  FruitModel.swift
//  fructus-swiftui
//
//  Created by Jason Prosia on 04/06/21.
//

import SwiftUI

//MARK: - FRUIT DATA MODEL

struct FruitModel: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
