//
//  HabitItem.swift
//  HabitTracking
//
//  Created by Jacob and Shalise on 3/15/22.
//

import Foundation

struct HabitItem: Identifiable, Codable, Equatable {
    var id = UUID()
    var name: String
    var description: String
    var completionCount = 0

    static let example = HabitItem(name: "Example habit", description: "This is a test habit")
}
