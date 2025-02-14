//
//  ContentView.swift
//  ContactsList
//
//  Created by Yaroslav Malygin on 13.02.2025.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getContactList()
    var body: some View {
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            NumbersView(persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

#Preview {
    ContentView()
}
