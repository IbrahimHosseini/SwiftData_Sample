//
//  ContentView.swift
//  SwiftData_Sample
//
//  Created by Ibrahim Hosseini on 4/1/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var friends: [Friend]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(friends) { item in
                    NavigationLink {
                        Text("Item at \(item.lastName)")
                    } label: {
                        Text(item.firstName)
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Friend(firstName: "Ibrahim", lastName: "Hosseini")
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(friends[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Friend.self, inMemory: true)
}
