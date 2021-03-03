//
//  GeneratedQuestionsView.swift
//  MultiplicationTables
//
//  Created by Melissa  Garrett on 3/2/21.
//

import SwiftUI

struct GeneratedQuestionsView: View {
    @State private var currentQuestion = 0
    @State private var playerAnswer = ""

    var questionsCorrect = 0
    var playerQuestions: [QuestionsArray] = []

    var body: some View {
        Section(header: Text("Let's Go!")
                    .foregroundColor(.yellow)
                    .font(.title)
                    .padding(.bottom, 20)) {
            HStack {
                Text("What is 1 x 1?")
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                TextField("Answer", text: $playerAnswer)
                    .keyboardType(.numberPad)
                Button(action: {
                    print("MISSY")
                }) {
                    Text("Submit")
                }
                .padding()
                .foregroundColor(.black)
                .background(Color.green)
                .border(Color.black, width: 2)
                .padding(.trailing, 20)
            }
        }
    }
}
