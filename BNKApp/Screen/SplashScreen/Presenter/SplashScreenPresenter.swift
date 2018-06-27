//
//  SplashScreenPresenter.swift
//  BNKApp
//
//  Created by chayarak on 25/6/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import Foundation

protocol SplashScreenPresenterProtocol {
    
}

class SplashScreenPresenter {
    
    var view: SplashScreenProtocol?
    
    init(_ view: SplashScreenProtocol) {
        self.view = view
    }
}

extension SplashScreenPresenter: SplashScreenPresenterProtocol {
    
}
