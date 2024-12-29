//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Alexander Fedotov on 25.12.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(userName ?? "")!"
       
    }
        
}
