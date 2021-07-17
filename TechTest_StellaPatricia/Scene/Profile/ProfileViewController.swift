//
//  ProfileViewController.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 17/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func puchaseHistoryTapped(_ sender: Any) {
        let vc = PurchasedHistoryViewController(nibName: "PurchasedHistoryViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: false)
    }
}
