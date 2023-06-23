//
//  ContactRowView.swift
//  ContactListSwiftUI
//
//  Created by Dmitriy Panferov on 23/06/23.
//

import SwiftUI

struct ContactRowView: View {
    let contact: Person
    
    var body: some View {
        HStack {
            Text("\(contact.fullName)")
                .frame(width: 120, alignment: .leading)
            
            Spacer()
            
            NavigationLink(destination: ContactDetailView(contact: contact)) {}
        }
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(contact: Person.getContact())
    }
}
