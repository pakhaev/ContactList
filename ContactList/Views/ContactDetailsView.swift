//
//  ContactDetailsView.swift
//  ContactList
//
//  Created by Khusain on 24.06.2023.
//

import SwiftUI

struct ContactDetailsView: View {
    let person: Person
    
    var body: some View {
        List {
            //Более изящного способа не нашел)
            HStack {
                Spacer()
                
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding([.top, .bottom], 20)
                
                Spacer()
            }
            
            ContactInfoView(image: "phone", phoneNumber: person.phoneNumber)
            
            ContactInfoView(image: "tray", phoneNumber: person.email)
            
            
        }
        .navigationTitle(person.fullName)
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(person: Person.getContactList()[0])
    }
}

struct ContactInfoView: View {
    let image: String
    let phoneNumber: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .frameIcons()
            
            Text(phoneNumber)
                .font(.title2)
                .padding(.leading, 10)
            Spacer()
        }
    }
}


extension Image {
    func frameIcons() -> some View {
        self
            .resizable()
            .frame(width: 18, height: 18)
            .foregroundColor(.blue)
    }
}
