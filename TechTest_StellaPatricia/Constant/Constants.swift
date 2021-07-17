//
//  Constant.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 16/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    // Assets
    static let ICON_CHECK = "iicon_check"
    static let ICON_UNCHECK = "icon_uncheck"
    
    // Colors
    static let BASIC_BG_COLOR = UIColor(cgColor: CGColor(srgbRed: 253/255, green: 246/255, blue: 240/255, alpha: 1))
    static let BASIC_VIEW_BG_COLOR = UIColor(cgColor: CGColor(srgbRed: 245/255, green: 198/255, blue: 170/255, alpha: 1))
    static let BASIC_BORDER_COLOR = UIColor(cgColor: CGColor(srgbRed: 82/255, green: 61/255, blue: 50/255, alpha: 1))
    
    // Font size
    static let STANDARD_FONT_SIZE_BIG = 20
    static let STANDARD_FONT_SIZE_MEDIUM = 15
    
    // URL
    static let BASEURL = "https://private-4639ce-ecommerce56.apiary-mock.com/home"
}

struct Image {
    static let placeholderImage = UIImage(named: "icon_placeholder")
    static let placeholderImage_vertival = UIImage(named: "icon_placeholder_vertical")
    static let likeImage = UIImage(named: "icon_like")
    static let unlikeImage = UIImage(named: "icon_unlike")
}
