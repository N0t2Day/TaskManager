//
//  BaseAPI.swift
//  TaskManager
//
//  Created by Artem Kedrov on 04.12.2024.
//

import Foundation

protocol BaseAPI {
    var baseUrl: String { get }
    var request: URLRequest { get }
}

extension BaseAPI {
    var baseUrl: String {
        String()
    }
}
