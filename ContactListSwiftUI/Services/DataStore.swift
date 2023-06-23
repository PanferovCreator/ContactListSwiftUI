//
//  DataStore.swift
//  ContactListSwiftUI
//
//  Created by Dmitriy Panferov on 23/06/23.
//

import Foundation

final class DataStore {
    
    static let shared = DataStore()
    
    let names = [
    "John",
    "Aaron",
    "Tim",
    "Ted",
    "Steven",
    "Sharon",
    "Nikola",
    "Allan",
    "Bruce",
    "Carl"
    ]
    
    let surnames = [
    "Burton",
    "Smith",
    "Willis",
    "Jankin",
    "Demon",
    "Nil",
    "Bronco",
    "Stars",
    "Buttler",
    "Kovach"
    ]
    
    let phones = [
    "12345678",
    "23456789",
    "34567890",
    "00044223",
    "00155221",
    "00099881",
    "12233445",
    "16677889",
    "99988811",
    "88811122"
    ]
    
    let emails = [
    "gog@gmail.com",
    "dendi@gmail.com",
    "segamega@gmail.com",
    "sony@gmail.com",
    "xbox@gmail.com",
    "gameboy@gmail.com",
    "tetris@gmail.com",
    "electronika@gmail.com",
    "wii@gmail.com",
    "iphone@gmail.com"
    ]
    
    private init() {}
}
