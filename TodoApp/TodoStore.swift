//
//  TodoStore.swift
//  TodoApp
//
//  Created by Mohamed Eldahtoury on 23/10/2025.
//

import Combine

class TodoStore: ObservableObject {
    @Published var todos: [String] = []

    func add(_ text: String) {
        guard !text.isEmpty else { return }
        todos.append(text)
    }
}
