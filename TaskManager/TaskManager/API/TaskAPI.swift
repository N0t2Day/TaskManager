//
//  TaskAPI.swift
//  TaskManager
//
//  Created by Artem Kedrov on 04.12.2024.
//

import Foundation

enum TaskAPI: BaseAPI {
    case getList(perPage: Int, page: Int)
    case createNew(UserTask.Request)
    
    var request: URLRequest {
        switch self {
        case .getList(let perPage, let page):
            return URLRequest(url: .init(string: "")!)
        case .createNew(let params):
            return URLRequest(url: .init(string: "")!)

        }
    }
}
