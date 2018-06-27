//
//  SplashScreenRouter.swift
//  BNKApp
//
//  Created by chayarak on 25/6/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import Foundation

protocol SplashScreenRouterProtocol {
    
}

class SplashScreenRouter: BaseRouter, SplashScreenRouterProtocol {
    func redirectToHome() {
        redirectTo(name: self.homeTab)
    }
}
