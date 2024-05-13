//
//  ContentView.swift
//  todolist
//
//  Created by ominxet on 13/05/2024.
//

import SwiftUI

struct HomeView: View {
    @State var arrayListTodo: [ToDoItem] = [
        ToDoItem(title: "Deploy", body: "Build App Emol", isDone: false),
        ToDoItem(title: "Fix bug", body: "Medaca", isDone: true)
    ]
    var body: some View {
        NavigationStack {
            List {
                ForEach(arrayListTodo) { item in
                    ToDoItemView(titleText: item.title, bodyText: item.body, isDone: item.isDone, toggle: {
                        if let index = arrayListTodo.firstIndex(where: { $0.id == item.id}) {
                            arrayListTodo[index].isDone.toggle()
                        }
                    })
                }
            }
            .navigationTitle("To-Do List")
            .toolbar(content: {
                Button(action: {
                    arrayListTodo.append(ToDoItem(title: "New Item", body: "Description", isDone: false))
                }) {
                    Label("Add", systemImage: "plus")
                }
            })
        }
    }
}

#Preview {
    HomeView()
}
