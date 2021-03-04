//
//  TablesView.swift
//  MultiplicationTables
//
//  Created by Melissa  Garrett on 3/1/21.
//

import SwiftUI

struct TablesView: View {
    @Binding var multiplicationSelection: Int 

    let multiplicationChoices = [ [1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12] ]

    var body: some View {
        Section (header: Text("Which table do you want to practice?")
                    .font(.title2)
                    .padding(.bottom, 20)) {
            ForEach(0 ..< 3) { number in
                HStack {
                    Button(action: {
                        multiplicationSelection = multiplicationChoices[number][0]
                    }) {
                        Text("\(self.multiplicationChoices[number][0])")
                            .frame(minWidth: 0, maxWidth: .infinity) // equal widths for buttons
                            .padding() // inside button
                            .foregroundColor(.black)
                            .background(Color.orange)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                            .padding(3) // between buttons
                    }
                    
                    Button(action: {
                        multiplicationSelection = multiplicationChoices[number][1]
                    }) {
                        Text("\(self.multiplicationChoices[number][1])")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color.green)
                            .border(Color.black, width: 2)
                            .padding(3) // between buttons
                    }
                    
                    Button(action: {
                        multiplicationSelection = multiplicationChoices[number][2]
                    }) {
                        Text("\(self.multiplicationChoices[number][2])")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color.purple)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                            .padding(3) // between buttons
                    }
                    
                    Button(action: {
                        multiplicationSelection = multiplicationChoices[number][3]
                    }) {
                        Text("\(self.multiplicationChoices[number][3])")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color.blue)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                            .padding(3) // between buttons
                    }
                }
            }
        }
    }
}
