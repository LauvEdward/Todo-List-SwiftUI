//
//  CustomAlertTextField.swift
//  todolist
//
//  Created by ominxet on 15/05/2024.
//

import SwiftUI
import MijickPopupView

struct CustomAlertTextField: CentrePopup {
    @State var titlePopup: String = ""
    @State var textTitle: String = ""
    @State var textDescription: String = ""
    var callback: (String, String)->Void
    func createContent() -> some View {
        VStack {
            Text(titlePopup).bold()
            TextEditor(text: $textTitle)
                .foregroundColor(.black)
                .scrollContentBackground(.hidden)
                .multilineTextAlignment(.center)
                .frame(height: 50)
                .overlay(
                         RoundedRectangle(cornerRadius: 10)
                           .stroke(Color.gray, lineWidth: 1)
                         )
            TextEditor(text: $textDescription)
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .scrollContentBackground(.hidden)
                .frame(maxHeight: 200)
                .overlay(
                         RoundedRectangle(cornerRadius: 10)
                           .stroke(Color.gray, lineWidth: 1)
                         )
            Spacer().frame(height: 20)
            Button(action: {
                if !(textTitle.isEmpty || textDescription.isEmpty) {
                    callback(textTitle, textDescription)
                    dismiss()
                }
            }, label: {
                Text("OK")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.gray)
                    .cornerRadius(10)
            })
        }
        .padding()
    }
    func configurePopup(popup: CentrePopupConfig) -> CentrePopupConfig {
        popup
            .horizontalPadding(20)
            .cornerRadius(16)
            .backgroundColour(Color.backgroundColor)
            .tapOutsideToDismiss(true)
    }
}

#Preview {
    CustomAlertTextField(titlePopup: "Add", textTitle: "", textDescription: "", callback: {_,_ in })
}
