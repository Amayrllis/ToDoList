//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    var body: some View {
        
        VStack {
            HStack{
                Text("To-Do List")//Title
                    .font(.system(size: 40)) //Text options
                    .fontWeight(.black) //Text option
                Spacer()
                
                Button{ //A button
                    withAnimation { //Adds animation to the new
                        showNewTask = true //Shows task.
                    }
                } label: {
                    Text("+") //The button text
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
        }
        .padding()
        Spacer()
        
        if showNewTask {
            NewToDoView()
        }
    }
}

#Preview {
    ContentView()
}
