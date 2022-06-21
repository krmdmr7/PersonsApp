//
//  PersonDetailViewController.swift
//  Persons App
//
//  Created by Kerem Demir on 19.06.2022.
//

import UIKit

class PersonDetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    
    
    var kisi:Persons?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            nameLabel.text = k.kisi_ad
            phoneNumberLabel.text = k.kisi_tel
        }
        
    }
}
