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
        let titleConfig = RandomStringGenerator.Config(length: 7, options: [.uppercase])
        let textConfig = RandomStringGenerator.Config(length: 512, options: RandomStringGenerator.Option.allCases)
        
        let initial = Date()
        let startDate = Date(days: -7, to: initial)
        let endDate = Date(days: -3, to: initial)
        let dateConfig = RandomDateGenerator.Config(startDate: startDate, endDate: endDate)
        
        let id = RandomIDGenerator.getNewStringID()
        let title = RandomStringGenerator.getNewRandomString(with: titleConfig)
        let text = RandomStringGenerator.getNewRandomString(with: textConfig)
        let createdAt = RandomDateGenerator.getNewRandomDateInRange(from: dateConfig)
        return UserTask(id: id, title: title, text: text, createdAt: createdAt)
    }
}
