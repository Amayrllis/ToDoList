//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
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
        
        List {
                ForEach (toDos) { toDoItem in
                        Text(toDoItem.title)
                }
        }
        
        if showNewTask {
            NewToDoView(showNewTask: $showNewTask, toDoItem: ToDoItem(title: "", isImportant: false))
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: ToDoItem.self, inMemory: true)
        //Allows the item to be seen in the list
}
