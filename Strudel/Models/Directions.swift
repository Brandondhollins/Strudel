//
//  Directions.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/25/24.
//

import SwiftUI

struct Direction: Identifiable {
    let id = UUID()
    let stepNumber: Int
    let instruction: String
}
