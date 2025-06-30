//
//  ContentView.swift
//  codeHistoryApp
//
//  Created by Rafael Ribeiro on 5/18/25.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    @State private var showScore = false
    
//
    var body: some View {
        NavigationStack {
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
                .onChange(of: viewModel.gameIsOver) { isOver in if isOver {
                    showScore = true
                }
                }
                .navigationDestination(isPresented: $showScore) {
                    ScoreView(viewModel: ScoreViewModel (correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses))
                }
                
            }
            
        }
    }

}

#Preview {
    GameView()
}
