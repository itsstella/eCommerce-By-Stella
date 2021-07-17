//
//  HomeTabBarController.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 16/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import UIKit
import SwipeableTabBarController

class HomeTabBarController: SwipeableTabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        swipeAnimatedTransitioning?.animationType = SwipeAnimationType.sideBySide
        isCyclingEnabled = true
        
        tabBar.barTintColor = Constants.BASIC_VIEW_BG_COLOR
        tabBar.tintColor = Constants.BASIC_BORDER_COLOR
     
    }
}
