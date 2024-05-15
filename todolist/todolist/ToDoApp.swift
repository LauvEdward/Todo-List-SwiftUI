//
//  todolistApp.swift
//  todolist
//
//  Created by ominxet on 13/05/2024.
//

import SwiftUI
import MijickPopupView
@main
struct ToDoApp: App {
    var body: some Scene {
        WindowGroup {
            TodoListView().implementPopupView()
        }
    }
}
