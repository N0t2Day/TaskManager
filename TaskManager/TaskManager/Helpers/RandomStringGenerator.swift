//
//  RandomStringGenerator.swift
//  TaskManager
//
//  Created by Artem Kedrov on 04.12.2024.
//

import Foundation

enum RandomStringGenerator {
    enum Option: CaseIterable {
        case lowercase
        case uppercase
        case numeric
        
        var letters: String {
            switch self {
            case .lowercase:
                return "abcdefghijklmnopqrstuvwxyz"
            case .uppercase:
                return "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
            case .numeric:
                return "0123456789"
            }
        }
    }
    
    static func getNewRandomString(with length: Int, options: Option...) -> String {
        let letters = options.map { $0.letters }.joined()
        return String((0..<length).map{ _ in letters.randomElement()! })
    }
}
