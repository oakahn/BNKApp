//
//  UpdateImageMemberPresenter.swift
//  BNKApp
//
//  Created by chayarak on 10/7/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

protocol UpdateImageMemberPresenterProtocol {
    func updateImageMember(nameMember: String)
    func goToLinkInstagram(name: String)
}

class UpdateImageMemberPresenter {
    
    var view: UpdateImageMemberProtocol?
    
    init(_ view: UpdateImageMemberProtocol) {
        self.view = view
    }
}

extension UpdateImageMemberPresenter: UpdateImageMemberPresenterProtocol {
    func goToLinkInstagram(name: String) {
        guard let instagramUrl = URL(string: name) else { return }
        UIApplication.shared.canOpenURL(instagramUrl) ? UIApplication.shared.openURL(instagramUrl) : UIApplication.shared.openURL(NSURL(string: name)! as URL)
    }
    
    func updateImageMember(nameMember: String) {
        var lastURL: String = ""
        if (nameMember != "") { lastURL = nameMember + ".bnk48official" }
        let url = "https://www.api.bnk48.com/api/social-feeds?page=1&max=1529538001000&limit=5&username=" + lastURL
        Alamofire.request(url).responseJSON { (res) in
            guard let detail = Mapper<UpdateInstagramModel>().map(JSONObject: res.result.value) else {
                return
            }
            self.view?.getImageSuccess(detail: detail)
        }
    }
}
