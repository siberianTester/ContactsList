//
//  ContactRowView.swift
//  ContactsList
//
//  Created by Yaroslav Malygin on 13.02.2025.
//

import SwiftUI

struct ContactRowView: View {
    let person: Person
    
    var body: some View {
        NavigationLink(destination: ContactView(person: person)) {
            HStack {
                Text(person.fullName)
            }
        }
    }
}

#Preview {
    ContactRowView(person: Person.getContactList().first!)
}
