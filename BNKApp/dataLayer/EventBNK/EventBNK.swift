//
//  EventBNK.swift
//  BNKApp
//
//  Created by chayarak on 26/6/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import Foundation
import ObjectMapper

class EventBNK {
}

class EventDetail: Mappable {
    
    var date: String?
    var title: String?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        date <- map["date"]
        title <- map["title"]
    }
}
