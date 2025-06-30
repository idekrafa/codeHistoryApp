//
//  ContentView.swift
//  codeHistoryApp
//
//  Created by Rafael Ribeiro on 5/18/25.
//

import SwiftUI

struct GameView: View {
    
//This is the place where I'll place the variables and all the other info
//   let question = Question(
//    questionText: "What was the first computer bug?",
//    possibleAnswers: ["Ant", "Beatle", "Moth", "Fly"],
//    correctAnswerIndex: 2)
    
    @StateObject var viewModel = GameViewModel()
//
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
            .padding()
            .foregroundColor(.white)
            .navigationBarHidden(true)
            .environmentObject(viewModel)

        }
    }

}

#Preview {
    GameView()
}
