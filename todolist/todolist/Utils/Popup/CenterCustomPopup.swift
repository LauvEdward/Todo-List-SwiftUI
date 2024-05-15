//
//  CenterCustomPopup.swift
//  todolist
//
//  Created by ominxet on 15/05/2024.
//

import SwiftUI
import MijickPopupView

struct CustomCenterPopupView: CentrePopup {
    var title: String
    var body: String
    init(title: String, body: String) {
        self.title = title
        self.body = body
    }
    func createContent() -> some View {
        VStack(spacing: 0) {
            createIllustration()
            Spacer().frame(height: max(12, 0))
            createTitle(title: title)
            Spacer().frame(height: max(8, 0))
            createDescription(description: body)
            Spacer().frame(height: max(32, 0))
            createButton()
        }
        .padding(.top, 12)
        .padding(.bottom, 24)
        .padding(.horizontal, 24)
    }
}
private extension CustomCenterPopupView {
    func createIllustration() -> some View {
        Image("app-icon")
            .resizable()
            .frame(width: 120,height: 120)
    }
    func createTitle(title: String) -> some View {
        Text(title)
            .font(.system(size: 18, weight: .bold))
            .foregroundColor(.black)
            .multilineTextAlignment(.center)
            .fixedSize(horizontal: false, vertical: true)
    }
    func createDescription(description: String) -> some View {
        Text(description)
            .font(.system(size: 14))
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .fixedSize(horizontal: false, vertical: true)
    }
    func createButton() -> some View {
        Button(action: dismiss) {
            Text("OK")
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(.white)
                .frame(height: 46)
                .frame(maxWidth: .infinity)
                .background(Color.gray)
                .cornerRadius(8)
        }
    }
}
#Preview {
    CustomCenterPopupView(title: "Title", body: "Body")
}
