//
//  Date+Ext.swift
//  TaskManager
//
//  Created by Artem Kedrov on 04.12.2024.
//

import Foundation

extension Date {
    init(days: Int, to date: Date = Date()) {
        let newDate = Calendar.current.date(byAdding: .day, value: days, to: date)
        self = newDate!
    }
}
