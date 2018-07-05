//
//  File.swift
//  BNKApp
//
//  Created by chayarak on 5/7/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import Foundation
import ObjectMapper

protocol HistoryMemberPresenterProtocol {
    
}

class HistoryMemberPresenter {
    
    var view: HistoryMemberProtocol?
    
    init(_ view: HistoryMemberProtocol) {
        self.view = view
    }
}

extension HistoryMemberPresenter: HistoryMemberPresenterProtocol {
    
}
