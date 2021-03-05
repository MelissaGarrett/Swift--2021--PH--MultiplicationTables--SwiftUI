//
//  GeneratedQuestionsView.swift
//  MultiplicationTables
//
//  Created by Melissa  Garrett on 3/2/21.
//

import SwiftUI

struct GeneratedQuestionsView: View {
    @Binding var isGameRunning: Bool
    @Binding var isGameOver: Bool
    @Binding var playerQuestions: [QuestionsArray]
    @Binding var convertedSelection: Int
    
    @State private var questionCounter = 1
    @State private var currentQuestion = 0
    @State private var playerAnswer = ""
    @State private var questionsCorrect = 0

    var body: some View {
        Section(header: Text("Let's Go!")
                    .foregroundColor(.yellow)
                    .font(.title)
                    .padding(.bottom, 20)) {
            if (isGameRunning && !isGameOver) {
                HStack {
                    Text("\(playerQuestions[currentQuestion].question)")
                        .padding(.leading, 15)
                        .padding(.trailing, 10)
                    TextField("Answer", text: $playerAnswer)
                        .keyboardType(.numberPad)
                    Button(action: {
                        self.checkAnswer()
                    }) {
                        Text("Submit")
                    }
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.green)
                    .border(Color.black, width: 2)
                    .padding(.trailing, 10)
                }
            } else {
                HStack {
                    Text("GAME OVER!")
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .foregroundColor(.red)
                    Text("You got \(questionsCorrect) correct.")
                        .padding(.trailing, 20)
                }
            }
        }
        .opacity(isGameRunning ? 1 : 0)
    }
    
    func checkAnswer() {
        if playerQuestions[currentQuestion].answer == Int(playerAnswer) {
            questionsCorrect += 1
        }
        
        questionCounter += 1
        
        if questionCounter > convertedSelection {
            isGameOver = true
        } else {
            currentQuestion += 1
            playerAnswer = ""
        }
        
    }
}
