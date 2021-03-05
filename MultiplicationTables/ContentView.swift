//
//  ContentView.swift
//  MultiplicationTables
//
//  Created by Melissa  Garrett on 3/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isGameRunning = false
    @State private var isGameOver = false
    
    @State private var multiplicationSelection = 1
    
    @State private var questionsSelection = 0 // default of "5"
    @State private var convertedSelection = 5
    @State private var questionsChoices = ["5", "10", "All"]

    @State private var randomNumber = 0
    @State private var playerQuestions = [QuestionsArray]()
            
    var body: some View {
        NavigationView {
            Group {
                Spacer()
                TablesView(multiplicationSelection: $multiplicationSelection)
                Spacer()
                QuestionsView(questionsSelection: $questionsSelection, questionsChoices: $questionsChoices)
                Spacer()
                GeneratedQuestionsView(isGameRunning: $isGameRunning, isGameOver: $isGameOver, playerQuestions: $playerQuestions, convertedSelection: $convertedSelection)
                Spacer()
                Spacer()
            }
            .navigationTitle("MultiplicationTables")
            .navigationBarItems(trailing:
                Button(action: startGame) {
                    Text("Start")
                }
                .padding(5)
                .foregroundColor(.black)
                .background(Color.green)
                .border(Color.black, width: 2)
                .opacity(isGameRunning ? 0 : 1)
            )
        }
    }
    
    func startGame() {
        isGameRunning = true
        
        createQuestions()
    }
    
    func createQuestions() {
        switch (questionsSelection) {
        case 0:
            convertedSelection = 5
        case 1:
            convertedSelection = 10
        case 2:
            convertedSelection = 12
        default:
            convertedSelection = 5
        }
        
        for _ in (0 ..< convertedSelection) {
            randomNumber = Int.random(in: 1...12)

            let testQuestion = QuestionsArray(question: "What is \(multiplicationSelection) X \(randomNumber)?", answer: multiplicationSelection * randomNumber)

            playerQuestions.append(testQuestion)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
