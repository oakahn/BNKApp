//
//  HomeVC.swift
//  BNKApp
//
//  Created by chayarak on 27/6/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import UIKit

protocol HistoryVCProtocol: BaseVCProtocol {
    
}

class HistoryVC: BaseVC {
    
    lazy var presenter = HistoryPresenter(self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension HistoryVC: HistoryVCProtocol {
    
}
