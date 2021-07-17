//
//  HomeViewProtocol.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 17/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import Foundation
import UIKit

protocol HomeViewViewToPresenterProtocol: class{
    
    var view: HomeViewPresenterToViewProtocol? {get set}
    var interactor: HomeViewPresenterToInteractorProtocol? {get set}
    var router: HomeViewPresenterToRouterProtocol? {get set}
    func startFetchingData()
}

protocol HomeViewPresenterToViewProtocol: class{
    func showData(array:Array<ECommerceModel>?)
    func showError()
}

protocol HomeViewPresenterToRouterProtocol: class {
    static func initPresenter(vc: HomeViewController) -> HomeViewViewToPresenterProtocol

}

protocol HomeViewPresenterToInteractorProtocol: class {
    var presenter: HomeViewInteractorToPresenterProtocol? {get set}
    func fetchData()
}

protocol HomeViewInteractorToPresenterProtocol: class {
    func dataFetchedSuccess(dataArray: Array<ECommerceModel>?)
    func dataFetchFailed()
}
