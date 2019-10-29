//
//  paTableViewCell.swift
//  tableViewPractice
//
//  Created by akbar  Rizvi on 1/2/19.
//  Copyright © 2019 akbar  Rizvi. All rights reserved.
//

import UIKit

class paTableViewCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var mylabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
