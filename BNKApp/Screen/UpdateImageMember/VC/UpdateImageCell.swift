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
    @IBOutlet weak var instagramTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        styleImage()
        styleLabel()
    }
    
    func setup() {
        
    }
    
    func styleImage() {
        instagramImage.layer.cornerRadius = 2.0
    }

    func styleLabel() {
        officeLabel.layer.cornerRadius = 6.0
        officeLabel.backgroundColor = UIColor.black
    }
    
    func styleInstagramTitle() {
        instagramTitle.font = UIFont.kanitRegular10
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
