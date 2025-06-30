//
//  BottomTextView.swift
//  codeHistoryApp
//
//  Created by Rafael Ribeiro on 6/13/25.
//

import SwiftUI

struct BottomTextView: View {
    
    let str: String
    let AccentColor = Color("Acolor")
    
    var body: some View {
        HStack {
            Spacer()
           Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(Color(AccentColor))
    }
}

#Preview {
    BottomTextView(str: "teste")
}
