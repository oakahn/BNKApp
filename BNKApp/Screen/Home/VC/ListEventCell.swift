//
//  ListEventCell.swift
//  BNKApp
//
//  Created by chayarak on 26/6/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import UIKit

class ListEventCell: UITableViewCell {

    @IBOutlet weak var eventLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var listEventView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        listEventView.layer.cornerRadius = 5.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
