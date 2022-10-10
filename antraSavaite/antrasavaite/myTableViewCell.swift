//
//  myTableViewCell.swift
//  antrasavaite
//
//  Created by reromac on 2022-10-01.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var niboLabelis: UILabel!
    
    @IBOutlet weak var niboSwitchas: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
