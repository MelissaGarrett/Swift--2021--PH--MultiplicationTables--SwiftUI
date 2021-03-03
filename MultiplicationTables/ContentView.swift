//
//  ContentView.swift
//  MultiplicationTables
//
//  Created by Melissa  Garrett on 3/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isGameRunning = false
            
    var body: some View {
        NavigationView {
            Group {
                Spacer()
                TablesView()
                Spacer()
                QuestionsView()
                Spacer()
                GeneratedQuestionsView()
                Spacer()
                Spacer()
            }
            .navigationTitle("MultiplicationTables")
            .navigationBarItems(trailing:
                Button(action: startGame) {
                    Text("New Game")
                }
                .padding(5)
                .foregroundColor(.black)
                .background(Color.green)
                .border(Color.black, width: 2)
            )
            
        }
    }
    
    func startGame() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
