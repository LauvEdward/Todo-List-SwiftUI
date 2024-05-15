//
//  TodoListView.swift
//  todolist
//
//  Created by ominxet on 15/05/2024.
//
import SwiftUI
struct TodoListView: View {
    @StateObject var todoListViewModel = TodoListViewModel()
    var body: some View {
        NavigationStack {
            List {
                ForEach(todoListViewModel.arrayListTodo) { item in
                    ToDoItemView(titleText: item.title, bodyText: item.body, isDone: item.isDone, toggle: {
                        todoListViewModel.changeStatusItem(id: item.id)
                    })
                }
            }
            .navigationTitle("To-Do List")
            .toolbar(content: {
                Button(action: {
                    CustomAlertTextField(titlePopup: "Add new item", callback: { title, des in
                        todoListViewModel.addNewItemTodo(item: ToDoItemModel(title: title, body: des, isDone: false))
                    })
                    .showAndStack()
                }) {
                    Label("Add", systemImage: "plus")
                }
            })
        }
    }
}

#Preview {
    TodoListView()
}
