//
//  ItemDetailViewController.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 17/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import UIKit
import SDWebImage

class ItemDetailViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var likeImg: UIButton!
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var buyButton: UIButton!
    
    var data: ItemModel?
    var liked: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        img.sd_setImage(with: URL(string: data?.imageUrl ?? ""), placeholderImage: Image.placeholderImage)
        titleLbl.text = data?.title ?? ""
        descLbl.text = data?.description ?? ""
        priceLbl.text = data?.price ?? ""
        
        let defaults = UserDefaults.standard
        let likedArray = defaults.stringArray(forKey: "likedID") ?? [String]()
        if likedArray.contains(data?.id ?? "XX") {
            likeImg.setImage(Image.likeImage, for: .normal)
            liked = true
        } else {
            likeImg.setImage(Image.unlikeImage, for: .normal)
            liked = false
        }
        
        if data?.price ?? "" == "Sold Out" {
            buyButton.backgroundColor = .lightGray
            buyButton.isEnabled = false
        }

    }
    
    @IBAction func shareTapped(_ sender: Any) {
        if let name = URL(string: "https://itunes.apple.com/us/app/myapp/idxxxxxxxx?ls=1&mt=8"), !name.absoluteString.isEmpty {
          let objectsToShare = [name]
          let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
          self.present(activityVC, animated: true, completion: nil)
        } else {
        }
    }
    
    @IBAction func likeTapped(_ sender: Any) {
        let defaults = UserDefaults.standard
        var likeArray = defaults.stringArray(forKey: "likedID") ?? [String]()
        
        if liked {
            likeImg.setImage(Image.unlikeImage, for: .normal)
            likeArray.removeAll { $0 == data?.id ?? "" }
            liked = false

        } else {
            likeImg.setImage(Image.likeImage, for: .normal)
            
            likeArray.append(data?.id ?? "")
            liked = true
        }
        
        
        defaults.set(likeArray, forKey: "likedID")
    }
    
    @IBAction func buyTapped(_ sender: Any) {
        let defaults = UserDefaults.standard
        var likeArray = defaults.stringArray(forKey: "buyList") ?? [String]()
        likeArray.append(data?.id ?? "")
        
        defaults.set(likeArray, forKey: "buyList")

    }
    
    @IBAction func addToCardTapped(_ sender: Any) {
        let defaults = UserDefaults.standard
        var likeArray = defaults.stringArray(forKey: "cartList") ?? [String]()
        likeArray.append(data?.id ?? "")
        
        defaults.set(likeArray, forKey: "cartList")
    }
    
    @IBAction func backTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func seeDescTapped(_ sender: Any) {
        let vc = DetailDescriptionViewController(nibName: "DetailDescriptionViewController", bundle: nil)
        vc.text = data?.description ?? ""
        self.navigationController?.present(vc, animated: true)
    }
}
