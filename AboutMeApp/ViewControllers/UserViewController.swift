//
//  UserViewController.swift
//  AboutMeApp
//
//  Created by Alexander Fedotov on 19.01.2025.
//

import UIKit

final class UserViewController: UIViewController {
    
    @IBOutlet var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    @IBOutlet var departamentLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!
    
    
    var user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImage.image = UIImage(named: user.person.photo)
        title = user.person.name
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        jobLabel.text = user.person.job.title
        departamentLabel.text = user.person.job.deportament
        jobTitleLabel.text = user.person.job.position
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.user = user
    }
}
