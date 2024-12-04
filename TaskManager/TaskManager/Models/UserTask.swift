//
//  UserTask.swift
//  TaskManager
//
//  Created by Artem Kedrov on 04.12.2024.
//

import Foundation

struct UserTask {
    typealias TakListResponse = [Response]
    
    struct Response: Codable, Identifiable {
        let id: String
        let title: String
        let text: String
        let createdAt: Date
    }
    
    struct Request: Codable {
        let title: String
        let text: String
        let createdAt: Date
    }
}

extension UserTask {
    static var mock: UserTask.Response {
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
        return UserTask.Response(id: id, title: title, text: text, createdAt: createdAt)
    }
}

extension UserTask.Request {
    var jsonData: Data {
        get throws {
            try JSONEncoder().encode(self)
        }
    }
    
    var jsonObj: [String: Any] {
        get throws {
            let data = try jsonData
            return try JSONSerialization.jsonObject(with: data) as! [String: Any]
        }
    }
    
    var queryItems: [URLQueryItem] {
        get throws {
            let jsonObj = try jsonObj
            return jsonObj.map {
                .init(name: $0.key, value: "\($0.value)")
            }
        }
    }
}
