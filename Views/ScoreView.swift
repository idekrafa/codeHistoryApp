//
//  ScoreView.swift
//  codeHistoryApp
//
//  Created by Rafael Ribeiro on 6/30/25.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                
                Spacer()
                
                VStack {
                    Text("Final Score:")
                        .font(.body)
                
                
                    
                    Text("\(viewModel.percentage)%")
                    .font(.largeTitle)
                    .bold()
                }
                
                Spacer()
                
                VStack{
                    Text("\(viewModel.correctGuesses)✅")
                        .font(.largeTitle)
                    Text("\(viewModel.incorrectGuesses)❌")
                        .font(.largeTitle)
                }
                
                Spacer()
                
                NavigationLink(destination: WelcomeView(), label: {
                    BottomTextView(str: "Re-take Quiz!")
                })
                
            }
            .foregroundColor(.white)
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
}

