//
//  HomeViewInteractor.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 17/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

class HomeViewInteractor: HomeViewPresenterToInteractorProtocol{
    var presenter: HomeViewInteractorToPresenterProtocol?

    func fetchData() {
        
        let request = AF.request(Constants.BASEURL)
        
        request.responseJSON { (data) in
            switch data.result {
            case .success(let value):
                print(value)
                if let json = data.value as AnyObject? {
//                    let arrayResponse = json["data"] as? NSArray
                    let arrayObject = Mapper<ECommerceModel>().mapArray(JSONArray: json as? [[String : Any]] ?? []);
                    self.presenter?.dataFetchedSuccess(dataArray: arrayObject)
                }
            case .failure(let error):
                print(error)
                self.presenter?.dataFetchFailed()
            }
        }
        
        
    }
}
