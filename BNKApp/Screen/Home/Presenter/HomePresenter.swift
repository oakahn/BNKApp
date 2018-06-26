//
//  HomePresenter.swift
//  BNKApp
//
//  Created by chayarak on 26/6/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import Foundation

protocol HomePresenterProtocol {
    
}

class HomePresenter {
    
    var view: HomeVCProtocol?
    
    init(_ view: HomeVCProtocol) {
        self.view = view
    }
}
