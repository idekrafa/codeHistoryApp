//
//  ContentView.swift
//  codeHistoryApp
//
//  Created by Rafael Ribeiro on 5/18/25.
//

import SwiftUI

struct GameView: View {
    
//This is the place where I'll place the variables and all the other info
   let question = Question(
    questionText: "What was the first computer bug?",
    possibleAnswers: ["Ant", "Beatle", "Moth", "Fly"],
    correctAnswerIndex: 2)
    
    @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255) // This sets the value of mainColor
//
    var body: some View {
        ZStack{
            Color(mainColor)
                .ignoresSafeArea()
             VStack {
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                 Text(question.questionText) // Updated from hardcoded string
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                 HStack{
                     ForEach(0..<question.possibleAnswers.count) { answerIndex in
                         Button(action: {
                             print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                             mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                         }, label: {
                             ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                         })
                     }
                 }
            }
             .padding()
             .foregroundColor(.white)
        }
    }
}

#Preview {
    GameView()
}
