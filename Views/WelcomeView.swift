//
//  WelcomeView.swift
//  codeHistoryApp
//
//  Created by Rafael Ribeiro on 6/3/25.
//

import SwiftUI

struct WelcomeView: View {
    
    let mainColor = Color("mainColor")
    let accentColor = Color("Acolor")
    
    var body: some View {
        NavigationView {
            ZStack {
                mainColor.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select the correct answers to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(destination: GameView(), label: {
                        BottomTextView(str: "Okay, let's go!")
                    })
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    WelcomeView()
}
