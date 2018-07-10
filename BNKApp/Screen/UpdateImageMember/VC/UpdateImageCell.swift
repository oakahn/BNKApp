//
//  UpdateImageCell.swift
//  BNKApp
//
//  Created by chayarak on 10/7/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import UIKit

class UpdateImageCell: UITableViewCell {

    @IBOutlet weak var instagramImage: UIImageView!
    @IBOutlet weak var officeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        styleImage()
        styleLabel()
    }
    
    func styleImage() {
        instagramImage.layer.cornerRadius = 2.0
    }

    func styleLabel() {
        officeLabel.layer.cornerRadius = 6.0
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
