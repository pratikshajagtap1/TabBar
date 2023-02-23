//
//  StudentCollectionViewCell.swift
//  tabBar
//
//  Created by Mac on 14/11/1956 Saka.
//

import UIKit

class StudentCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var mobileNumberLabel: UILabel!
    @IBOutlet weak var adressLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
