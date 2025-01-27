//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Alexander Fedotov on 25.12.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = """
          Welcome, \(user.login)!
          My name is \(user.person.fullName).
        """
    }
    
    @IBAction func LogoutActionButton(_ sender: UIButton) {
        dismiss(animated: true)
        
    }
    
}
