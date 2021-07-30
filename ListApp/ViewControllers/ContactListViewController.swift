//
//  ContactListViewController.swift
//  ListApp
//
//  Created by Robert Miller on 30.07.2021.
//

import UIKit

class ContactListViewController: UITableViewController {

    var persons: [Person]!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let tabBarVC = self.tabBarController as? TabBarController else { return }
        persons = tabBarVC.persons
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullname
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
       
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: Contacts.phone.rawValue)
        default:
            content.text = person.email
            content.image = UIImage(systemName: Contacts.email.rawValue)
            
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

}
