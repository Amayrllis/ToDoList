//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Text("To-Do List")//Title
                    .font(.system(size: 40)) //Text options
                    .fontWeight(.black) //Text option
                Spacer()
                
                Button{ //A button
                    
                } label: {
                    Text("+") //The button text
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
        }
        .padding()
        Spacer()
    }
}

#Preview {
    ContentView()
}
