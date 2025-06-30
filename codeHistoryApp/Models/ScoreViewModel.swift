//
//  ScoreViewModel.swift
//  codeHistoryApp
//
//  Created by Rafael Ribeiro on 6/30/25.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
