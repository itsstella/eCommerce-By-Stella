//
//  SearchViewController.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 17/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

class SearchViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var deleteBtn: UIButton!
    
    var dataItem: [ItemModel] = []
    var dataSearched: [ItemModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "SearchCell", bundle: nil), forCellReuseIdentifier: "cell")

        deleteBtn.isHidden = true
        addData()
    }

    @IBAction func searchTFEdited(_ sender: Any) {
        deleteBtn.isHidden = false
        if searchTextField.text == "" {
            deleteBtn.isHidden = true
        } else {
            didSearch()
        }
    }
    
    @IBAction func deleteTapped(_ sender: Any) {
        searchTextField.text = ""
        deleteBtn.isHidden = true
        dataSearched = []
        searchTextField.resignFirstResponder()
        tableView.reloadData()
    }
    
    @IBAction func backTapped(_ sender: Any) {
        navigationController?.popViewController(animated: false)
    }
    
    func didSearch() {
        dataSearched = []
        for data in dataItem {
            let str = data.title ?? ""
            let string = str.lowercased()
            let txt = self.searchTextField.text!
            if string.contains(txt.lowercased()) {
                dataSearched.append(data)
            }
        }
        self.tableView.reloadData()
    }
    
}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSearched.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SearchCell
        
        cell?.nameLbl.text = dataSearched[indexPath.row].title
        cell?.img.sd_setImage(with: URL(string: dataSearched[indexPath.row].imageUrl ?? ""), placeholderImage: Image.placeholderImage_vertival)
        cell?.priceLbl.text = dataSearched[indexPath.row].price
        cell?.locationLbl.text = dataSearched[indexPath.row].location
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let vc = ItemDetailViewController(nibName: "ItemDetailViewController", bundle: nil)
        vc.data = dataSearched[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
