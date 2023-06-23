//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Dmitriy Panferov on 23/06/23.
//

import SwiftUI

struct NumbersView: View {
    @State private var singleSelection: UUID?
    
    private let contacts = Person.getContactList()
    
    var body: some View {
        NavigationStack {
            List(selection: $singleSelection) {
                ForEach(contacts) { contact in
                    Section(header: Text(contact.fullName)) {
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
            }
            .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView()
    }
}
