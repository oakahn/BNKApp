//
//  HomeVC.swift
//  BNKApp
//
//  Created by chayarak on 26/6/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import UIKit

protocol HomeVCProtocol: BaseVCProtocol {
    func getDetailEventBNK(_ list: [EventDetail])
}

class HomeVC: BaseVC {
    
    lazy var presenter = HomePresenter(self)
    @IBOutlet weak var eventListTable: UITableView!
    var listItem: [EventDetail] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventListTable.delegate = self
        eventListTable.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        presenter.getDetailHomeService()
    }
}

extension HomeVC: HomeVCProtocol, UITableViewDelegate, UITableViewDataSource {
    func getDetailEventBNK(_ list: [EventDetail]) {
        listItem = list
        eventListTable.reloadData()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItem.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = listItem[indexPath.row].title
        return cell
    }
}
