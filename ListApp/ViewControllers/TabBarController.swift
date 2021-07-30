//
//  ViewController.swift
//  ListApp
//
//  Created by Robert Miller on 30.07.2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        persons = setupPersons()
    }

    
}
extension TabBarController {
    func setupPersons() -> [Person] {
        let data = DataManager()
        var persons: [Person] = []
        
        while persons.count < data.personsCount {
            let unit = Person(name: data.names.randomElement() ?? "Oops..",
                                  surname: data.surnames.randomElement() ?? "Oops..",
                                  phoneNumber: data.phoneNumbers.randomElement() ?? "Oops..",
                                  email: data.emails.randomElement() ?? "Oops..")
            
            if persons.count == 0  {persons.append(unit) }
            var isUniqueCounter = 0
            for person in persons {
                if unit.name.caseInsensitiveCompare(person.name) == .orderedSame ||
                    unit.surname.caseInsensitiveCompare(person.surname) == .orderedSame ||
                    unit.email.caseInsensitiveCompare(person.email) == .orderedSame ||
                    unit.phoneNumber.caseInsensitiveCompare(person.phoneNumber) == .orderedSame  {
                    break
                } else {
                    isUniqueCounter += 1
                }
                if isUniqueCounter == persons.count {persons.append(unit) }
            }
        }
        print(persons)
        return persons
    }
}
