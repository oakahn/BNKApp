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
    func getDetailHome()
}

class HomePresenter {
    
    var view: HomeVCProtocol?
    
    init(_ view: HomeVCProtocol) {
        self.view = view
    }
}

extension HomePresenter: HomePresenterProtocol {
    func getDetailHome() {
        let url = "https://ticket.bnk48.com/theater/function_theater.php?method=get_event_calendar"
        
        Alamofire.request(url).responseJSON { (res) in
            print(res.result.value)
            print(res)
//            guard let detail = Mapper<[EventDetail]>().map(JSONObject: res) else {
            guard let detail = Mapper<EventDetail>().mapArray(JSONObject: res.result.value) else {
                print("Super man empty")
                return
            }
            print("Super man", detail)
        }
//        let detail = Mapper<EventBNK>().map(JSONObject: {})
    }
}
