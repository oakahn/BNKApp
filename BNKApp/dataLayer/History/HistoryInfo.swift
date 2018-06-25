//
//  HistoryInfo.swift
//  BNKApp
//
//  Created by chayarak on 25/6/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import Foundation
import ObjectMapper

class HistoryInfo: Mappable {
    
    var favouriteFood: String?
    var disLikeFood: String?
    var favouriteGame: String?
    var hobbies: String?
    var blood: String?
    var instagram: String?
    var image: String?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        favouriteFood <- map["favourite_foods"]
        disLikeFood <- map["dislike_foods"]
        favouriteGame <- map["favourite_games"]
        hobbies <- map["hobbies"]
        blood <- map["blood_group"]
        instagram <- map["instagram"]
        image <- map["profile_image"]
    }
}
