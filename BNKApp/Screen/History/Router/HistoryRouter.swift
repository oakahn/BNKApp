//
//  HistoryRouter.swift
//  BNKApp
//
//  Created by chayarak on 5/7/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import Foundation

protocol HistoryRouterProtocol {
    func redirectToDetailMember(detailMember: HistoryName)
}

class HistoryRouter: BaseRouter, HistoryRouterProtocol {
    func redirectToDetailMember(detailMember: HistoryName) {
        guard let goToMember = getViewController(storyboardName: self.historyMember) as? HistoryMemberVC else {
            return
        }
        goToMember.detailModel = detailMember
        redirectTo(viewController: goToMember)
    }
}
