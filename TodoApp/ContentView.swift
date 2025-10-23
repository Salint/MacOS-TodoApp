//
//  ContentView.swift
//  TodoApp
//
//  Created by Mohamed Eldahtoury on 23/10/2025.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: TodoStore
    @State private var showAddWindow = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Todo List")
                .font(.largeTitle)
                .padding(.bottom, 10)

            List(store.todos, id: \.self) { todo in
                Text(todo)
            }
        }
        .padding()
        .frame(minWidth: 300, minHeight: 400)
        .toolbar {
            Button("Add", systemImage: "plus") {
                showAddWindow = true
            }
        }
        .sheet(isPresented: $showAddWindow) {
            AddTodoWindow().environmentObject(store)
        }
    }
}

#Preview {
    ContentView()
}
