//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Dmitriy Panferov on 23/06/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            ContactsView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            NumbersView()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
