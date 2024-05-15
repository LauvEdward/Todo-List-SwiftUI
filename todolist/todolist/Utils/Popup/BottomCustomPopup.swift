//
//  BottomCustomPopup.swift
//  todolist
//
//  Created by ominxet on 15/05/2024.
//

import SwiftUI
import MijickPopupView

struct BottomCustomPopup: BottomPopup {
    func createContent() -> some View {
        HStack(spacing: 0) {
            Text("Witaj okrutny świecie")
            Spacer()
            Button(action: dismiss) { Text("Dismiss") }
        }
        .padding(.vertical, 20)
        .padding(.leading, 24)
        .padding(.trailing, 16)
    }
    func configurePopup(popup: BottomPopupConfig) -> BottomPopupConfig {
        popup
            .horizontalPadding(20)
            .bottomPadding(42)
            .cornerRadius(16)
    }
}

#Preview {
    BottomCustomPopup()
}
