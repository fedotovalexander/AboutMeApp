//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Alexander Fedotov on 20.01.2025.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet var bioLabel: UILabel!
    
    var user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bioLabel.text = user.person.bio
    }
}
