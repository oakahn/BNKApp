//
//  HomeVC.swift
//  BNKApp
//
//  Created by chayarak on 27/6/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import UIKit

protocol HistoryVCProtocol: BaseVCProtocol {
    func redirectToHistoryMember(detail: HistoryName)
}

class HistoryVC: BaseVC {
    
    var listHistoryBNK: [String] = []
    lazy var presenter = HistoryPresenter(self)
    lazy var router = HistoryRouter(self)
    @IBOutlet weak var historyTableView: UITableView!
    let listData = ListData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyTableView.dataSource = self
        historyTableView.delegate = self
        listHistoryBNK = listData.listItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        isHideTitle = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        isHideTitle = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension HistoryVC: HistoryVCProtocol {
    func redirectToHistoryMember(detail: HistoryName) {
        hideLoading()
        router.redirectToDetailMember(detailMember: detail)
    }
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
        cell.historyImage.image = getImage(indexPath.row)
        cell.nameCell.text = listHistoryBNK[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        displayLoading(message: "Loading", hasBg: true)
        presenter.getHistoryBNK(url: listHistoryBNK[indexPath.row])
    }
}
