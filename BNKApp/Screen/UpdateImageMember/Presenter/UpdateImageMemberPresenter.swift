//
//  UpdateImageMemberPresenter.swift
//  BNKApp
//
//  Created by chayarak on 10/7/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import Foundation
import Alamofire

protocol UpdateImageMemberPresenterProtocol {
    func updateImageMember(nameMember: String)
}

class UpdateImageMemberPresenter {
    
    var view: UpdateImageMemberProtocol?
    
    init(_ view: UpdateImageMemberProtocol) {
        self.view = view
    }
}

extension UpdateImageMemberPresenter: UpdateImageMemberPresenterProtocol {
    func updateImageMember(nameMember: String) {
        if nameMember == "" { }
        let url = "https://www.api.bnk48.com/api/social-feeds?page=1&max=1529538001000&limit=10&username="
            + nameMember
            + ".bnk48official"
        
        Alamofire.request(url).responseJSON { (res) in
            
        }
    }
}
