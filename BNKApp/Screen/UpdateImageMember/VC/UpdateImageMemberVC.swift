//
//  UpdateImageMemberVC.swift
//  BNKApp
//
//  Created by chayarak on 8/7/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import UIKit
// master

protocol UpdateImageMemberProtocol: BaseVCProtocol {
    func getImageSuccess(detail: UpdateInstagramModel)
}

class UpdateImageMemberVC: BaseVC {
    
    lazy var presenter = UpdateImageMemberPresenter(self)
    @IBOutlet weak var updateImageTable: UITableView!
    var detailInstagram: UpdateInstagramModel?
    var dataImage: [Data]?
    
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
        dataImage =  presenter.loadingImage(image: detail)
        updateImageTable.reloadData()
        hideLoading()
    }
}

extension UpdateImageMemberVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let getData = detailInstagram?.getFeeds else { return 0 }
        return getData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 280.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? UpdateImageCell else {
            return UITableViewCell()
        }
        guard let getData = detailInstagram?.getFeeds else { return UITableViewCell() }
//        guard let dataImage = dataImage else { return UITableViewCell () }
//        cell.instagramImage.image = UIImage(data: dataImage[indexPath.row])
        cell.officeLabel.text = getData[indexPath.row].username
        cell.instagramTitle.text = getData[indexPath.row].title
        guard let data = dataImage else { return UITableViewCell() }
        cell.instagramImage.image = UIImage(data: data[indexPath.row])
//        guard let link = getData[indexPath.row].url else {
//            return UITableViewCell() }
//        guard let URL = URL(string: link) else {
//            return UITableViewCell() }
//        URLSession.shared.dataTask(with: URL, completionHandler: { (data, response, error) -> Void in
////            if error == nil {
////                print(error ?? "")
////                return
////            }
//            DispatchQueue.main.async(execute: { () -> Void in
//                guard let checkData = data else { return }
//                cell.instagramImage.image = UIImage(data: checkData)
//            })
//
//        }).resume()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let getData = detailInstagram?.getFeeds else { return }
        guard let link = getData[indexPath.row].url else { return }
        presenter.goToLinkInstagram(name: link)
    }
}
