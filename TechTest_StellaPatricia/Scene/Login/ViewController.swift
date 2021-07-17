//
//  ViewController.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 15/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @IBAction func loginTapped(_ sender: Any) {

    }
}

