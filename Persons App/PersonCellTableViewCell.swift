//
//  PersonCellTableViewCell.swift
//  Persons App
//
//  Created by Kerem Demir on 19.06.2022.
//

import UIKit

class PersonCellTableViewCell: UITableViewCell {

    @IBOutlet weak var personTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
