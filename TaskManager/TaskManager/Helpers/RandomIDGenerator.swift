//
//  RandomIDGenerator.swift
//  TaskManager
//
//  Created by Artem Kedrov on 04.12.2024.
//

import Foundation

enum RandomIDGenerator {
    static func getNewStringID() -> String {
        UUID().uuidString
    }
}