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

            
    var body: some View {
        NavigationView {
            Group {
                Spacer()
                TablesView(multiplicationSelection: $multiplicationSelection)
                Spacer()
                QuestionsView(questionsSelection: $questionsSelection)
                Spacer()
                GeneratedQuestionsView(multiplicationSelection: $multiplicationSelection, questionsSelection: $questionsSelection, isGameRunning: $isGameRunning)
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
