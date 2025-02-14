//
//  ContactView.swift
//  ContactsList
//
//  Created by Yaroslav Malygin on 13.02.2025.
//

import SwiftUI

struct ContactView: View {
    let person: Person
    
    var body: some View {
        List {
            
            HStack {
                Spacer()
                
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .padding()
                
                Spacer()
            }
            Label(person.phoneNumber, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationTitle(person.fullName)
    }
}

#Preview {
    ContactView(person: Person.getContactList().first!)
}
