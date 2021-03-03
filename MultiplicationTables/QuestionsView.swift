//
//  QuestionsView.swift
//  MultiplicationTables
//
//  Created by Melissa  Garrett on 3/1/21.
//

import SwiftUI

struct QuestionsView: View {
    @Binding var questionsSelection: Int

    let questionsChoices = ["5", "10", "All"]

    var body: some View {
        Section(header: Text("How many questions do you want to answer?")
                    .font(.title3)
                    .padding(.bottom, 20)) {
            Picker("Number of questions", selection: $questionsSelection) {
                ForEach(0 ..< questionsChoices.count) {
                    Text("\(self.questionsChoices[$0])")
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .background(Color.blue)
        }
    }
}
