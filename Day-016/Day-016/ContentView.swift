//
//  ContentView.swift
//  Day-016
//
//  Created by Matthias Meissen on 03.06.24.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    let students = ["Name 1", "Name 2", "Name 3"]
    @State private var selectedStudent = "Name 1"
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text("Hey there")
                    Text("This is some form thing")
                    Text("And it can do some stuff")
                }
                Section {
                    Text("Like grouping elements")
                    Text("Which is really helpful")
                    Text("It can show the Tap Count: \(tapCount)")
                }

                Button("Increase Count") {
                    tapCount += 1
                }
                Button("Reset Count") {
                    tapCount = 0
                }
                
                Section {
                    TextField("Enter your name", text: $name)
                    Text("Your name is \(name)")
                }
                
                Picker("Pick a student", selection: $selectedStudent) {ForEach(students, id: \.self){Text($0)}}
                
            }.navigationTitle("Some Title")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
