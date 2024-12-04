//
//  UserTask.swift
//  TaskManager
//
//  Created by Artem Kedrov on 04.12.2024.
//

import Foundation

struct UserTask: Codable, Identifiable {
    let id: String
    let title: String
    let text: String
    let createdAt: Date
}

extension UserTask {
    static var mock: UserTask {
        .init(id: UUID().uuidString, title: String(), text: String(), createdAt: Date())
    }
}
