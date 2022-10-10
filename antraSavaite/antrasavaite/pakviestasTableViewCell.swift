//
//  pakviestasTableViewCell.swift
//  antrasavaite
//
//  Created by reromac on 2022-10-02.
//

import UIKit

class pakviestasTableViewCell: UITableViewCell {

    @IBOutlet weak var pakviestasVardas: UILabel!
    
    @IBOutlet weak var arDalyvaus: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
