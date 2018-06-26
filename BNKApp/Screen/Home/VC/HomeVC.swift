//
//  HomeVC.swift
//  BNKApp
//
//  Created by chayarak on 26/6/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import UIKit

protocol HomeVCProtocol: BaseVCProtocol {
    
}

class HomeVC: BaseVC {
    
    lazy var presenter = HomePresenter(self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        presenter.getDetailHome()
    }
}

extension HomeVC: HomeVCProtocol {
    
}
