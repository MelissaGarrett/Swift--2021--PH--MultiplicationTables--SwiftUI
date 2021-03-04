//
//  ContentView.swift
//  MultiplicationTables
//
//  Created by Melissa  Garrett on 3/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isGameRunning = false
    @State private var multiplicationSelection = 0 // default of 1
    @State private var questionsSelection = 0 // default of "5"
    @State private var randomNumber = 0
    @State private var playerAnswer = ""
    @State private var currentQuestion = 0
    @State private var questionsCorrect = 0
    @State private var playerQuestions = [QuestionsArray]()
    @State private var questionsChoices = ["5", "10", "All"]
            
    var body: some View {
        NavigationView {
            Group {
                Spacer()
                TablesView(multiplicationSelection: $multiplicationSelection)
                Spacer()
                QuestionsView(questionsSelection: $questionsSelection, questionsChoices: $questionsChoices)
                Spacer()
                GeneratedQuestionsView(isGameRunning: $isGameRunning)
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
        let selection: Int
        switch (questionsSelection) {
        case 0:
            selection = 5
        case 1:
            selection = 10
        case 2:
            selection = 12
        default:
            selection = 5
        }
        
        for _ in (0 ..< selection) {
            randomNumber = Int.random(in: 1...12)

            let testQuestion = QuestionsArray(question: "What is \(multiplicationSelection) X \(randomNumber)", answer: multiplicationSelection * randomNumber)

            playerQuestions.append(testQuestion)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
