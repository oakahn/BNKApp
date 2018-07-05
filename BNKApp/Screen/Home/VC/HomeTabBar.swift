//
//  HomeTabBar.swift
//  BNKApp
//
//  Created by chayarak on 27/6/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import UIKit

class HomeTabBar: UITabBarController {
    
    @IBOutlet weak var mainTabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setup() {
        mainTabBar.tintColor = UIColor.bnkColor
        mainTabBar.unselectedItemTintColor = UIColor.grayLight
        mainTabBar.barTintColor = UIColor.white
    }
}
