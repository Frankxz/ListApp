//
//  DataManager.swift
//  ListApp
//
//  Created by Robert Miller on 30.07.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    private init () {}
    
    private let personsCount =  10
    private let names = ["Robert",
                         "Jack",
                         "Michael",
                         "Alex",
                         "Alice",
                         "Maria",
                         "Ivan",
                         "Leo",
                         "Albert",
                         "Zhan" ]
    
    private let surnames = ["Miller",
                            "Brown",
                            "Black",
                            "Banino",
                            "Wheeldy",
                            "Bound",
                            "Frizer",
                            "Gandolfini",
                            "Brioni",
                            "Ramzi"]
    
    private let phoneNumbers = ["+7 (777) 100 40 40",
                                "+7 (777) 200 20 20",
                                "+7 (777) 122 33 42",
                                "+7 (777) 123 34 43",
                                "+7 (777) 666 32 11",
                                "+7 (727) 101 10 23",
                                "+7 (779) 999 29 12",
                                "+7 (777) 219 82 34",
                                "+7 (777) 891 90 10",
                                "+7 (777) 777 77 11"]
    
    private let emails = ["gav@gmail.com",
                          "kket@gmail.com",
                          "loaz@gmail.com",
                          "kitax@gmail.com",
                          "bini@gmail.com",
                          "yerw@gmail.com",
                          "jeja@gmail.com",
                          "jonmo@gmail.com",
                          "redio@gmail.com",
                          "tukla@gmail.com"]
    
    
    func generatePersons() -> [Person] {
        var persons: [Person] = []
        
        while persons.count < personsCount {
            let unit = Person(name: names.randomElement() ?? "Oops..",
                              surname: surnames.randomElement() ?? "Oops..",
                              phoneNumber: phoneNumbers.randomElement() ?? "Oops..",
                              email: emails.randomElement() ?? "Oops..")
            
            if persons.count == 0  {
                persons.append(unit)
            }
            var isUniqueCounter = 0
            for person in persons {
                if unit.name.caseInsensitiveCompare(person.name) == .orderedSame ||
                    unit.surname.caseInsensitiveCompare(person.surname) == .orderedSame ||
                    unit.email.caseInsensitiveCompare(person.email) == .orderedSame ||
                    unit.phoneNumber.caseInsensitiveCompare(person.phoneNumber) == .orderedSame  {
                    break
                } else { isUniqueCounter += 1 }
                if isUniqueCounter == persons.count { persons.append(unit) }
            }
        }
        
        return persons
    }
}

