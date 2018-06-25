//
//  SplashScreenVC.swift
//  BNKApp
//
//  Created by chayarak on 25/6/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import UIKit

protocol SplashScreenProtocol: BaseVCProtocol {
    
}

class SplashScreen: BaseVC {
    
    lazy var presenter = SplashScreenPresenter(self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension SplashScreen: SplashScreenProtocol {
    
}
