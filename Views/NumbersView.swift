//
//  NumbersView.swift
//  ContactsList
//
//  Created by Yaroslav Malygin on 13.02.2025.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                Section(header: Text(person.fullName)) {
                    Label(person.phoneNumber, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
            }
            .listStyle(.inset)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    NumbersView(persons: Person.getContactList())
}
