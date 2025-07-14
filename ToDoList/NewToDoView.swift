//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack {
            Text("Task Title:")
            TextField("Enter the task description...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(20)
                .padding()
            
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) { //This is a toggle
                Text("Is it important?") //Marks if it's important or not
            }
            Button("Save") { //New button, for saving
                
            }
            .font(.title)
            .fontWeight(.bold)
        }
        .padding()
    }
}

#Preview {
    NewToDoView()
}
