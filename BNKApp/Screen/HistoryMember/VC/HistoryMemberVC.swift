//
//  HistoryMemberVC.swift
//  BNKApp
//
//  Created by chayarak on 5/7/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import UIKit

protocol HistoryMemberProtocol: BaseVCProtocol {
    
}

class HistoryMemberVC: BaseVC {
    
    var detailModel: HistoryName?
    lazy var presenter = HistoryMemberPresenter(self)
    @IBOutlet weak var memberImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideBackButton()
        getImage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        
    }
    
    func getImage() {
        
        guard let imageDetail = detailModel?.member?.image else { return }
        
        guard let url = URL(string: imageDetail) else {
            memberImage.image = UIImage(named: "cherprang")
            return
        }
        let data = try? Data(contentsOf: url)
        memberImage.image = UIImage(data: data!)
    }
}

extension HistoryMemberVC: HistoryMemberProtocol {
    
}
