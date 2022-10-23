//
//  navigacijosTableViewCell.swift
//  penktosSavaitesND
//
//  Created by reromac on 2022-10-20.
//

import UIKit

class navigacijosTableViewCell: UITableViewCell {

    @IBOutlet weak var fotoCeleje: UIImageView!
    
    @IBOutlet weak var labelisCeleje: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        uzapvalina()

        // Configure the view for the selected state
    }
    
    func uzapvalina() {
        fotoCeleje.layer.cornerRadius = 20
        
    }
}
