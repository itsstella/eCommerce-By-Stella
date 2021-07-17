//
//  CategoryCell.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 16/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import UIKit

class PromoCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var likeIcon: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
