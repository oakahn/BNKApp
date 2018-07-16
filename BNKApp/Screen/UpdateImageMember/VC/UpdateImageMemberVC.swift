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
    var detailInstagram: UpdateInstagramModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateImageTable.delegate = self
        updateImageTable.dataSource = self
        displayLoading(message: "", hasBg: true)
        presenter.updateImageMember(nameMember: "")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension UpdateImageMemberVC: UpdateImageMemberProtocol {
    func getImageSuccess(detail: UpdateInstagramModel) {
        detailInstagram = detail
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
        guard let getData = detailInstagram?.getFeeds else {
            return UITableViewCell()
        }
        guard let getImage = getData[indexPath.row].image else {
            return UITableViewCell()
        }
        cell.instagramImage.image = UIImage(named: getImage)
        cell.officeLabel.text = getData[indexPath.row].username
        cell.instagramTitle.text = getData[indexPath.row].title
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let getData = detailInstagram?.getFeeds else { return }
        guard let link = getData[indexPath.row].url else { return }
        presenter.goToLinkInstagram(name: link)
    }
}
