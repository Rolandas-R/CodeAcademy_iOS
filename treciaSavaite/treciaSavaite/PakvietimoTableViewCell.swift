//
//  PakvietimoTableViewCell.swift
//  treciaSavaite
//
//  Created by reromac on 2022-10-03.
//

import UIKit

class PakvietimoTableViewCell: UITableViewCell {

    @IBOutlet weak var vardoLabel: UILabel!
    @IBOutlet weak var arPakviestasView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
