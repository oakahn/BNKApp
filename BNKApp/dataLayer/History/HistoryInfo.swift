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
    
    var favouriteFood: DetailFavouriteFood?
    var disLikeFood: DetailDislikeFood?
    var favouriteGame: DetailFavouriteGame?
    var hobbies: DetailHobbies?
    var blood: String?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        favouriteFood <- map["favourite_foods"]
        disLikeFood <- map["dislike_foods"]
        favouriteGame <- map["favourite_games"]
        hobbies <- map["hobbies"]
        blood <- map["blood_group"]
    }
}

class DetailFavouriteFood: Mappable {
    
    var th: String?
    var en: String?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        en <- map["en"]
        th <- map["th"]
    }
}

class DetailDislikeFood: Mappable {
    
    var en: String?
    var th: String?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        en <- map["en"]
        th <- map["th"]
    }
}

class DetailFavouriteGame: Mappable {
    var th: String?
    var en: String?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        en <- map["en"]
        th <- map["th"]
    }
}

class DetailHobbies: Mappable {
    var th: String?
    var en: String?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        en <- map["en"]
        th <- map["th"]
    }
}
