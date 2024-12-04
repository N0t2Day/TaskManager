//
//  TaskListViewModel.swift
//  TaskManager
//
//  Created by Artem Kedrov on 04.12.2024.
//

import Foundation

protocol TaskListViewModelProtocol: BaseViewModel {
    var titleText: String { get }
}

class TaskListViewModel: TaskListViewModelProtocol {
    typealias Model = UserTask

    @Published var titleText: String = String()
    
    func onAppear() {
        titleText = ""
    }
    
    func onDisappear() {
        
    }
}
