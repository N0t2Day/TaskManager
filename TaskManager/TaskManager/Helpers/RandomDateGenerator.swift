//
//  RandomDateGenerator.swift
//  TaskManager
//
//  Created by Artem Kedrov on 04.12.2024.
//

import Foundation

enum RandomDateGenerator {
    struct Config {
        let startDate: Date
        let endDate: Date
    }
    
    static func getNewRandomDateInRange(from fromDate: Date, to toDate: Date) -> Date {
        let fromTimeInterval = fromDate.timeIntervalSince1970
        let toTimeInterval = toDate.timeIntervalSince1970
        let randomInterval = Double.random(in: fromTimeInterval...toTimeInterval)
        return Date(timeIntervalSince1970: randomInterval)
    }
    
    static func getNewRandomDateInRange(from config: Config) -> Date {
        getNewRandomDateInRange(from: config.startDate, to: config.endDate)
    }
}
