//
//  LikeViewController.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 17/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import UIKit

class LikeViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let dict = HomeViewController.itemDict
    var likeArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(UINib(nibName: "LikeCell", bundle: nil), forCellWithReuseIdentifier: "cell")

        let defaults = UserDefaults.standard
        likeArray = defaults.stringArray(forKey: "likedID") ?? [String]()
        
    }

    @IBAction func backTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}

extension LikeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let cellSize = CGSize(width: (UIScreen.main.bounds.width-10)/2, height: (UIScreen.main.bounds.width-10)/1.3)
        return cellSize
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return likeArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? LikeCell
        
        cell?.titleLbl.text = dict[likeArray[indexPath.row]]?.title
        cell?.img.sd_setImage(with: URL(string: dict[likeArray[indexPath.row]]?.imageUrl ?? ""), placeholderImage: Image.placeholderImage_vertival)
        cell?.priceLbl.text = dict[likeArray[indexPath.row]]?.price
        
        return cell ?? UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = ItemDetailViewController(nibName: "ItemDetailViewController", bundle: nil)
        vc.data = dict[likeArray[indexPath.row]]
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
