//
//  BaseViewModel.swift
//  TaskManager
//
//  Created by Artem Kedrov on 04.12.2024.
//

import Foundation
import Combine

protocol BaseViewModel: ObservableObject {
    associatedtype Model
    
    func onAppear()
    func onDisappear()
}
