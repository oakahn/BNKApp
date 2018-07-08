//
//  HistoryViewCell.swift
//  BNKApp
//
//  Created by chayarak on 27/6/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import UIKit

class HistoryViewCell: UITableViewCell {

    @IBOutlet weak var historyImage: UIImageView!
    @IBOutlet weak var nameCell: UILabel!
    @IBOutlet weak var uiView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setStyleImage()
        setStyleUIView()
        setStypeName()
    }
    
    func setStyleImage() {
        historyImage.layer.cornerRadius = 2.0
    }
    
    func setStyleUIView() {
        uiView.backgroundColor = UIColor.bnkColor
        uiView.layer.cornerRadius = 5.0
    }
    
    func setStypeName() {
        nameCell.font = UIFont.kanitRegular10
        nameCell.textColor = UIColor.white
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
