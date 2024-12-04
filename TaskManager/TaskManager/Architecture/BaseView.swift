//
//  BaseView.swift
//  TaskManager
//
//  Created by Artem Kedrov on 04.12.2024.
//

import SwiftUI

protocol BaseView: View {
    associatedtype ViewModel: BaseViewModel
    associatedtype ViewType: View
    
    var viewModel: ViewModel { get }
    var content: ViewType { get }
}

extension BaseView {
    var body: some View {
        Self._printChanges()
        return content
            .onAppear {
                viewModel.onAppear()
            }
            .onDisappear {
                viewModel.onDisappear()
            }
    }
}
