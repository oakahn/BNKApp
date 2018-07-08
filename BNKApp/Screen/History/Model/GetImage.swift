//
//  HistoryModel.swift
//  BNKApp
//
//  Created by chayarak on 6/7/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import UIKit

struct ListData {
    var listItem: [String] = ["cherprang",
                              "noey"]
}

extension HistoryVC {
    func getImage(_ name: Int) -> UIImage {
        return UIImage(named: listHistoryBNK[name]) ?? UIImage()
    }
}
