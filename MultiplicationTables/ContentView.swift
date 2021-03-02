//
//  ContentView.swift
//  MultiplicationTables
//
//  Created by Melissa  Garrett on 3/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isGameRunning = false
    
    var questionsCorrect = 0
        
    var body: some View {
        NavigationView {
            Group {
                TablesView()
                QuestionsView()
            }
            .navigationTitle("MultiplicationTables")
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
