//
//  HistoryBNK.swift
//  BNKApp
//
//  Created by chayarak on 25/6/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import Foundation
import ObjectMapper

class HistoryBNK: Mappable {
    
    var member:DetailHistoryBNK?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        member <- map["member"]
    }
}

class DetailHistoryBNK: Mappable {
    
    var firstName: DetailFirstName?
    var lastName: DetailLastName?
    var nickName: DetailNickName?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        firstName <- map["first_name"]
        lastName <- map["last_name"]
    }
}

class DetailFirstName: Mappable {
    
    var th: String?
    var en: String?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        th <- map["th"]
        en <- map["en"]
    }
}

class DetailLastName: Mappable {
    
    var th: String?
    var en: String?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        th <- map["th"]
        en <- map["en"]
    }
}

class DetailNickName: Mappable {
    
    var th: String?
    var en: String?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        th <- map["th"]
        en <- map["en"]
    }
}

class BIO: Mappable {
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        
    }
}
