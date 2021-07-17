//
//  PurchasedHistoryViewController.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 17/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import UIKit

class PurchasedHistoryViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let dict = HomeViewController.itemDict
    var likeArray: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "PurchasedHistoryCell", bundle: nil), forCellReuseIdentifier: "cell")

        let defaults = UserDefaults.standard
        likeArray = defaults.stringArray(forKey: "buyList") ?? [String]()
        
    }

    @IBAction func backTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}

extension PurchasedHistoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return likeArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PurchasedHistoryCell
        
        cell?.titleLbl.text = dict[likeArray[indexPath.row]]?.title
        cell?.img.sd_setImage(with: URL(string: dict[likeArray[indexPath.row]]?.imageUrl ?? ""), placeholderImage: Image.placeholderImage_vertival)
        cell?.priceLbl.text = dict[likeArray[indexPath.row]]?.price
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = ItemDetailViewController(nibName: "ItemDetailViewController", bundle: nil)
        vc.data = dict[likeArray[indexPath.row]]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
