//
//  Person.swift
//  ListApp
//
//  Created by Robert Miller on 30.07.2021.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
}
enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}

