//
//  UpdateInstagramModel.swift
//  BNKApp
//
//  Created by chayarak on 8/7/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import Foundation
import ObjectMapper

class UpdateInstagramModel: Mappable {
    
    var getFeeds: [feedsDetail]?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        getFeeds <- map["feeds"]
    }
}

class feedsDetail: Mappable {
    
    var username: String?
    var title: String?
    var url: String?
    var image: String?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        username <- map["username"]
        title <- map["title"]
        url <- map["url"]
        image <- map["thumbnail"]
    }
}
