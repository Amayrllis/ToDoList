//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Environment(\.modelContext) var modelContext
    @Binding var showNewTask: Bool
    @Bindable var toDoItem: ToDoItem
    var body: some View {
        VStack {
            Text("Task Title:")
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(20)
                .padding()
            
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) { //This is a toggle
                Text("Is it important?") //Marks if it's important or not
            }
            Button("Save") { //New button, for saving
                addToDo() //Adds a new task
                showNewTask = false
            }
            .font(.title)
            .fontWeight(.bold)
        }
        .padding()
    }
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
    }
}

#Preview {
    NewToDoView(showNewTask: .constant(false), toDoItem: ToDoItem(title: "", isImportant: false))
}
