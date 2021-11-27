//
//  PersonInfoViewController.swift
//  ListApp
//
//  Created by Robert Miller on 30.07.2021.
//

import UIKit

class PersonInfoViewController: UIViewController {
    
   
    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoView.layer.cornerRadius = 20
        fullNameLabel.text = person.fullname
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
    }
    
}
