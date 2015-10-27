//
//  TableViewCell.swift
//  sampletablereuse
//
//  Created by Vineeth Vijayan on 27/10/15.
//  Copyright © 2015 Vineeth Vijayan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var _name: UILabel!
    @IBOutlet weak var _segmentedControl: UISegmentedControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
