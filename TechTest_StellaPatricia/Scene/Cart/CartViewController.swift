//
//  CartViewController.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 17/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import UIKit

class CartViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var dataArray: [String] = []
    var dict = HomeViewController.itemDict
    var dictionary = [String: Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.register(UINib(nibName: "CartCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let array = defaults.stringArray(forKey: "cartList") ?? [String]()

        var dic = [String: Int]()
        
        dict = HomeViewController.itemDict
        for item in array {
            dic[item] = (dic[item] ?? 0)+1
        }

        dictionary = dic
        dataArray = Array(dictionary.keys)
        refreshUI()
    }
    func refreshUI() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

extension CartViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CartCell
        
        cell?.titleLbl.text = dict[dataArray[indexPath.row]]?.title
        cell?.img.sd_setImage(with: URL(string: dict[dataArray[indexPath.row]]?.imageUrl ?? ""), placeholderImage: Image.placeholderImage_vertival)
        cell?.priceLbl.text = dict[dataArray[indexPath.row]]?.price
        let str = dict[dataArray[indexPath.row]]?.id ?? ""
        let text: Int = dictionary[str] ?? 1
        cell?.totalItem.text = String(format: "%i", text)
        
        return UITableViewCell()
    }
    
    
}
