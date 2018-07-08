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
        let setURL = "https://www.api.bnk48.com/api/members/" + url
        Alamofire.request(setURL).responseJSON { (res) in
            guard let statusService = res.response?.statusCode else {
                self.view?.displayMessage(title: "Service Error", message: "Disconnect Network")
                return
            }
            guard statusService < 400 else { return }
            guard let detail = Mapper<HistoryName>().map(JSONObject: res.result.value) else {
                return
            }
            self.view?.redirectToHistoryMember(detail: detail)
        }
    }
}
