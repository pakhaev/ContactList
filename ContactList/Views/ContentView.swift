//
//  ContentView.swift
//  ContactList
//
//  Created by Khusain on 24.06.2023.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            
            PersonsListView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Phone")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
