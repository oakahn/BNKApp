//
//  UpdateImageMemberVC.swift
//  BNKApp
//
//  Created by chayarak on 8/7/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import UIKit

protocol UpdateImageMemberProtocol: BaseVCProtocol {
    func getImageSuccess(detail: UpdateInstagramModel)
}

class UpdateImageMemberVC: BaseVC {
    
    lazy var presenter = UpdateImageMemberPresenter(self)
    @IBOutlet weak var updateImageTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateImageTable.delegate = self
        updateImageTable.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        displayLoading(message: "", hasBg: true)
        presenter.updateImageMember(nameMember: "")
    }
}

extension UpdateImageMemberVC: UpdateImageMemberProtocol {
    func getImageSuccess(detail: UpdateInstagramModel) {
        updateImageTable.reloadData()
        hideLoading()
    }
}

extension UpdateImageMemberVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? UpdateImageCell else {
            return UITableViewCell()
        }
        cell.textLabel?.text = ""
        return UITableViewCell()
    }
}
