//
//  PersonsListView.swift
//  ContactList
//
//  Created by Khusain on 24.06.2023.
//

import SwiftUI

struct PersonsListView: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            Section {
                ContactInfoView(image: "phone", phoneNumber: person.phoneNumber)
                
                ContactInfoView(image: "tray", phoneNumber: person.email)
            } header: {
                //И тут как вы говорили не получилось, т.к. значение person.fullName нужно было передать в функцию
                Text(person.fullName)
                    .fontWeight(.bold)
                    .textCase(.none)
            }
            
            .padding(.trailing, 0)
        }
    }
    
    
}

struct PersonsListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsListView(persons: Person.getContactList())
    }
}
