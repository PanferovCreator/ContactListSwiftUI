//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Dmitriy Panferov on 23/06/23.
//

import Foundation

struct Person: Identifiable {
    
    let id = UUID()
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
    
    static func getContact() -> Person {
        
        let person = Person(
            name: DataStore.shared.names.randomElement() ?? "None",
            surname: DataStore.shared.surnames.randomElement() ?? "None" ,
            email: DataStore.shared.emails.randomElement() ?? "None",
            phoneNumber: DataStore.shared.phones.randomElement() ?? "None"
        )
        
        return person
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
