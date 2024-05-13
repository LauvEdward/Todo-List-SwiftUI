//
//  ToDoItemView.swift
//  todolist
//
//  Created by ominxet on 13/05/2024.
//

import SwiftUI

struct ToDoItemView: View {
    var titleText: String
    var bodyText: String
    var isDone: Bool
    var toggle: ()->Void?
    var body: some View {
        HStack() {
            VStack(alignment: .leading) {
                Text(titleText)
                    .font(.title2)
                    .bold()
                    .foregroundColor(isDone ? .gray : .black)
                Text(bodyText)
                    .font(.body)
                    .foregroundColor(isDone ? .gray : .black)
            }
            Spacer(minLength: 5)
            Image(systemName: isDone ? "checkmark.circle.fill" : "checkmark.circle")
                .foregroundColor(.black)
        }.onTapGesture {
            toggle()
        }
    }
}
#Preview {
    ToDoItemView(titleText: "Title", bodyText: "Body text test", isDone: false, toggle: {})
}
