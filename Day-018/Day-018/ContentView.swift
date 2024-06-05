//
//  ContentView.swift
//  Day-018
//
//  Created by Matthias Meissen on 05.06.24.
//

import SwiftUI

struct ContentView: View {
    @State public var persons = 4.0
    @State public var amount = 20
    @State public var tip = 20
    @State public var tip1 = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var getAmount: Double {
        let totalAmount = amount + amount * tip / 100
        let total = Double(totalAmount) / persons
        return total
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Input") {
                    TextField("Persons", value: $persons, format: .number)
                    TextField("Amount", value: $amount, format: .number)
                    Picker("Amount to tip", selection: $tip){
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                }
                Section("Result") {
                    Text(getAmount, format: .number)
                }
            }.navigationTitle("Title")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
