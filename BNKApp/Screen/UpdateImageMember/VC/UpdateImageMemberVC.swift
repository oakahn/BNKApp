//
//  UpdateImageMemberVC.swift
//  BNKApp
//
//  Created by chayarak on 8/7/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import UIKit

protocol UpdateImageMemberProtocol: BaseVCProtocol {
    
}

class UpdateImageMemberVC: BaseVC {
    
    lazy var presenter = UpdateImageMemberPresenter(self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setup() {
        presenter.updateImageMember(nameMember: "")
    }
}

extension UpdateImageMemberVC: UpdateImageMemberProtocol {
    
}
