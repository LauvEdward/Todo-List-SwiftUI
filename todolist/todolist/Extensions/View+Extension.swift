//
//  View+Extension.swift
//  todolist
//
//  Created by ominxet on 15/05/2024.
//

import Foundation
import SwiftUI
extension View {
  func endTextEditing() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),
                                    to: nil, from: nil, for: nil)
  }
}
