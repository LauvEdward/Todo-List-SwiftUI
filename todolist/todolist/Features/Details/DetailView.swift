//
//  DetailView.swift
//  todolist
//
//  Created by ominxet on 15/05/2024.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("title123")
                Text("Body")
            }.navigationTitle("To-Do List")
                .toolbar(content: {
                    HStack {
                        Button(action: {}, label: {
                            Image(systemName: "chevron.backward")
                        })
                        Spacer()
                        Button(action: {}, label: {
                            Image(systemName: "trash")
                        })
                    }
                })
        }
    }
}

#Preview {
    DetailView()
}
