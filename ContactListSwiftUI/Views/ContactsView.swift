//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Dmitriy Panferov on 23/06/23.
//

import SwiftUI

struct ContactsView: View {
    private let contacts = Person.getContactList()
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                ContactRowView(contact: contact)
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
