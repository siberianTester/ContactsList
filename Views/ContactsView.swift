//
//  ContactsView.swift
//  ContactsList
//
//  Created by Yaroslav Malygin on 13.02.2025.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                ContactRowView(person: person)
            }
            .listStyle(.inset)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    ContactsView(persons: Person.getContactList())
}
