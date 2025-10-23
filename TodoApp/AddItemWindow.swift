//
//  AddItemWindow.swift
//  TodoApp
//
//  Created by Mohamed Eldahtoury on 23/10/2025.
//
import SwiftUI

struct AddTodoWindow: View {
    @EnvironmentObject var store: TodoStore
    @Environment(\.dismiss) private var dismiss
    @State private var newTodo = ""

    var body: some View {
        VStack(spacing: 15) {
            Text("Add New Todo")
                .font(.title2)

            TextField("Enter todo...", text: $newTodo)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            HStack {
                Button("Cancel") {
                    dismiss()
                }
                Button("Add") {
                    store.add(newTodo)
                    dismiss()
                }
                .keyboardShortcut(.defaultAction)
            }
        }
        .padding(20)
        .frame(width: 300)
    }
}
