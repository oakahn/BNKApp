//
//  HistoryPresenter.swift
//  BNKApp
//
//  Created by chayarak on 27/6/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

protocol HistoryPresenterProtocol {
    func getHistoryBNK(url: String)
}

class HistoryPresenter {
    
    var view: HistoryVCProtocol?
    
    init(_ view: HistoryVCProtocol) {
        self.view = view
    }
}

extension HistoryPresenter: HistoryPresenterProtocol {
    
    func getHistoryBNK(url: String) {
        Alamofire.request(url).responseJSON { (res) in
            let detail = Mapper<HistoryName>().map(JSONObject: res)
        }
    }
}
