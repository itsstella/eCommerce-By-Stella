//
//  HomeViewController.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 16/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import UIKit
import SDWebImage

class HomeViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    static var itemDict : [String : ItemModel] = [:]
    
    var ecomData: ECommerceModel?
    
    var presenter: HomeViewViewToPresenterProtocol?
        
    override func viewDidLoad() {
        super.viewDidLoad()
    
        storeData()
        
        tableView.register(UINib(nibName: "PromoCell", bundle: nil), forCellReuseIdentifier: "cell")
        collectionView.register(UINib(nibName: "CategoryCell", bundle: nil), forCellWithReuseIdentifier: "categoryCell")
        
        presenter = HomeViewRouter.initPresenter(vc: self)
        presenter?.startFetchingData()
    }
    
    @IBAction func searchBtnTapped(_ sender: Any) {
        let vc = SearchViewController(nibName: "SearchViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func likeBtnTapped(_ sender: Any) {
        let vc = LikeViewController(nibName: "LikeViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ecomData?.data?.productPromo?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PromoCell
        let cellData = ecomData?.data?.productPromo?[indexPath.row]
        cell?.titleLbl.text = cellData?.title
        cell?.img.sd_setImage(with: URL(string: cellData?.imageUrl ?? ""), placeholderImage: Image.placeholderImage)
        
        let defaults = UserDefaults.standard
        let likedArray = defaults.stringArray(forKey: "likedID") ?? [String]()
        if likedArray.contains(cellData?.id ?? "XX") {
            cell?.likeIcon.image = Image.likeImage
        }
        
        let item = ItemModel.init(
            imageUrl:cellData?.imageUrl ?? "",
            title: cellData?.title ?? "",
            price: cellData?.price ?? "",
            location: "",
            description: cellData?.description ?? "",
            loved: cellData?.loved ?? false,
            id: cellData?.id ?? "")
        
        HomeViewController.itemDict[cellData?.id ?? "1"] = item
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 221
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = ItemDetailViewController(nibName: "ItemDetailViewController", bundle: nil)
        let item = ItemModel.init(
            imageUrl:ecomData?.data?.productPromo?[indexPath.row].imageUrl ?? "",
            title: ecomData?.data?.productPromo?[indexPath.row].title ?? "",
            price: ecomData?.data?.productPromo?[indexPath.row].price ?? "",
            location: "",
            description: ecomData?.data?.productPromo?[indexPath.row].description ?? "",
            loved: ecomData?.data?.productPromo?[indexPath.row].loved ?? false,
            id: ecomData?.data?.productPromo?[indexPath.row].id ?? "")
        vc.data = item
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let cellSize = CGSize(width: 100, height: 120)
        return cellSize
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ecomData?.data?.category?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as? CategoryCell
        let cellData = ecomData?.data?.category?[indexPath.row]
        cell?.titleLbl.text = cellData?.name
        cell?.imgView.sd_setImage(with: URL(string: cellData?.imageUrl ?? ""), placeholderImage: Image.placeholderImage)
        
        return cell ?? UICollectionViewCell()
    }
    
    
}

extension HomeViewController: HomeViewPresenterToViewProtocol {
    func showData(array: Array<ECommerceModel>?) {
        ecomData = array?[0]
        tableView.reloadData()
        collectionView.reloadData()
    }
    
    func showError() {
        
    }
    
}
