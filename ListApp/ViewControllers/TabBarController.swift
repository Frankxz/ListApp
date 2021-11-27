//
//  ViewController.swift
//  ListApp
//
//  Created by Robert Miller on 30.07.2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    let persons: [Person] = DataManager.shared.generatePersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

}

