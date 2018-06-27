//
//  HomePresenter.swift
//  BNKApp
//
//  Created by chayarak on 26/6/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import Foundation
import ObjectMapper
import Alamofire

protocol HomePresenterProtocol {
    func getDetailHomeService()
}

class HomePresenter {
    
    var view: HomeVCProtocol?
    
    init(_ view: HomeVCProtocol) {
        self.view = view
    }
}

extension HomePresenter: HomePresenterProtocol {
    func getDetailHomeService() {
        let url = "https://ticket.bnk48.com/theater/function_theater.php?method=get_event_calendar"
        Alamofire.request(url).responseJSON { (res) in
            guard let statusService = res.response?.statusCode else {
                self.view?.displayMessageWithCallBackOK(title: "Service Error", message: "Disconnect Network", callback: {
                    self.view?.connectNetwork()
                })
                return
            }
            guard statusService < 400 else { return }
            
            guard let detail = Mapper<EventDetail>().mapArray(JSONObject: res.result.value) else {
                return
            }
            self.view?.getDetailEventBNK(detail)
        }
    }
}
