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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension HistoryMemberVC: HistoryMemberProtocol {
    
}
