//
//  TaskListView.swift
//  TaskManager
//
//  Created by Artem Kedrov on 04.12.2024.
//

import SwiftUI

struct TaskListView<ViewModel: TaskListViewModelProtocol>: BaseView {
    
    @StateObject var viewModel: ViewModel
    
    var content: some View {
        Text(viewModel.titleText)
    }
}

#Preview {
    TaskListView(viewModel: TaskListViewModel())
}
