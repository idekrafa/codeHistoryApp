//
//  ChoiceTextView.swift
//  codeHistoryApp
//
//  Created by Rafael Ribeiro on 5/19/25.
//

import SwiftUI

struct ChoiceTextView: View {
//Place for variables
    let choiceText: String
    let accentColor = Color("Acolor")
//
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(accentColor, width: 4)
    }
}

#Preview {
    ChoiceTextView(choiceText: "Choice text!") // add the choiceText argument
}
