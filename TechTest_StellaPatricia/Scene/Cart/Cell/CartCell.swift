//
//  CartCell.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 17/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import UIKit

class CartCell: UITableViewCell {

    var check = false
    @IBOutlet weak var checkBoxBtn: UIButton!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var totalItem: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func checkBoxClicked(_ sender: Any) {
        if check {
            check = false
            checkBoxBtn.setImage(UIImage(named: "icon_uncheck"), for: .normal)
        } else {
            check = true
            checkBoxBtn.setImage(UIImage(named: "icon_check"), for: .normal)
        }
    }
    
}
