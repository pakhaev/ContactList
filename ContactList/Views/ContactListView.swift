//
//  ContactListView.swift
//  ContactListView
//
//  Created by Khusain on 24.06.2023.
//

import SwiftUI

struct ContactListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                NavigationLink(person.fullName, destination: ContactDetailsView(person: person))
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
        
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getContactList())
    }
}
