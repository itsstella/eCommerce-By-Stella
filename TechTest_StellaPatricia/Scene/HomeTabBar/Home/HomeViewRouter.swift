//
//  HomeViewRouter.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 17/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import Foundation
import UIKit

class HomeViewRouter: HomeViewPresenterToRouterProtocol {
    static func initPresenter(vc: HomeViewController) -> HomeViewViewToPresenterProtocol {
        let presenter: HomeViewViewToPresenterProtocol & HomeViewInteractorToPresenterProtocol = HomeViewPresenter()
        let interactor: HomeViewPresenterToInteractorProtocol = HomeViewInteractor()
        let router: HomeViewPresenterToRouterProtocol = HomeViewRouter()
        
        presenter.view = vc
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.presenter = presenter
        
        return presenter
    }
}
