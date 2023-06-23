//
//  ContactDetailView.swift
//  ContactListSwiftUI
//
//  Created by Dmitriy Panferov on 23/06/23.
//

import SwiftUI

struct ContactDetailView: View {
    
    let contact: Person
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    HStack {
                        Spacer()
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                        Spacer()
                    }
                    HStack{
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        Text(contact.phoneNumber)
                    }
                    HStack {
                        Image(systemName: "envelope")
                            .foregroundColor(.blue)
                        Text(contact.email)
                    }
                }
            }
            .navigationTitle(contact.fullName)
        }
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(contact: Person.getContact())
    }
}
