//
//  ContentView.swift
//  Day-017
//
//  Created by Matthias Meissen on 04.06.24.
//

import SwiftUI

struct ContentView: View {
    @State private var amount = 0.0
    @State private var people = 2
    @State private var tip = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let peopleCount = Double(people + 2)
        let tipSelection = Double(tip)
        
        let tipValue = amount / 100 * tipSelection
        let total = amount + tipValue
        let amountPerPerson = total / peopleCount
        return amountPerPerson
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                    Picker("Number of people", selection: $people) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section("How much do you want to tip") {
                    Picker("Tip percentage", selection: $tip) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                }
                
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("We Split")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
