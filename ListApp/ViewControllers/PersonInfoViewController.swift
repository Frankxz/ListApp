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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
