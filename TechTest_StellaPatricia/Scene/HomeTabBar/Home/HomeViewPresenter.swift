//
//  HomeViewPresenter.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 17/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import Foundation
import UIKit

class HomeViewPresenter: HomeViewViewToPresenterProtocol {
    var view: HomeViewPresenterToViewProtocol?
    var interactor: HomeViewPresenterToInteractorProtocol?
    var router: HomeViewPresenterToRouterProtocol?
    
    func startFetchingData() {
        interactor?.fetchData()
    }
}

extension HomeViewPresenter: HomeViewInteractorToPresenterProtocol{
    func dataFetchedSuccess(dataArray: Array<ECommerceModel>?) {
        view?.showData(array: dataArray)
    }
    
    func dataFetchFailed() {
        view?.showError()
    }
}
