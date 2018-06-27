//
//  HomeVC.swift
//  BNKApp
//
//  Created by chayarak on 27/6/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import UIKit

protocol HistoryVCProtocol: BaseVCProtocol {
    
}

class HistoryVC: BaseVC {
    
    lazy var presenter = HistoryPresenter(self)
    @IBOutlet weak var historyTableView: UITableView!
    let listHistoryBNK: [String] = ["cherprang"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyTableView.dataSource = self
        historyTableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension HistoryVC: HistoryVCProtocol {
    
}

extension HistoryVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listHistoryBNK.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? HistoryViewCell else {
            return UITableViewCell()
        }
        cell.imageView?.image = UIImage(named: listHistoryBNK[indexPath.row])
        cell.nameCell.text = listHistoryBNK[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.getHistoryBNK(url: listHistoryBNK[indexPath.row])
    }
}
