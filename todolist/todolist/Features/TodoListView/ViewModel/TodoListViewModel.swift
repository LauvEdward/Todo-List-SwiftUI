//
//  HomeViewModel.swift
//  todolist
//
//  Created by ominxet on 15/05/2024.
//

import Foundation
class TodoListViewModel: ObservableObject {
    @Published var arrayListTodo: [ToDoItemModel] = [
        ToDoItemModel(title: "Deploy", body: "Build App Emol", isDone: false),
        ToDoItemModel(title: "Fix bug", body: "Medaca", isDone: true)
    ]
    func addNewItemTodo(item: ToDoItemModel) {
        self.arrayListTodo.insert(item, at: 0)
    }  
    func changeStatusItem(id: UUID) {
        if let index = self.arrayListTodo.firstIndex(where: { $0.id == id}) {
            self.arrayListTodo[index].isDone.toggle()
        }
    }
}
