//
//  ToDoItem.swift
//  todolist
//
//  Created by ominxet on 13/05/2024.
//

import Foundation
struct ToDoItemModel: Identifiable {
    let id = UUID()
    var title: String
    var body: String
    var isDone: Bool
}
