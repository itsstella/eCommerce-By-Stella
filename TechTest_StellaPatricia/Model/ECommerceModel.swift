//
//  ECommerceModel.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 15/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import Foundation
import ObjectMapper

class ECommerceModel: Mappable {
        var data: EComModel?
        
       required init?(map:Map) {
           mapping(map: map)
       }
       
       func mapping(map:Map){
           data <- map["data"]
       }
    }

class EComModel: Mappable {
    var category: [Category]?
    var productPromo: [ProductPromo]?
    
   required init?(map:Map) {
       mapping(map: map)
   }
   
   func mapping(map:Map){
       category <- map["category"]
       productPromo <- map["productPromo"]
   }
}

    class Category: Mappable {
        var imageUrl: String?
        var id: Int?
        var name: String?
        
        required init?(map:Map) {
            mapping(map: map)
        }
        
        func mapping(map:Map){
            imageUrl <- map["imageUrl"]
            id <- map["id"]
            name <- map["name"]
        }
    }

    class ProductPromo: Mappable {
        var id: String?
        var imageUrl: String?
        var title: String?
        var description: String?
        var price: String?
        var loved: Bool?
        
        required init?(map:Map) {
            mapping(map: map)
        }
        
        func mapping(map:Map){
            id <- map["id"]
            imageUrl <- map["imageUrl"]
            title <- map["title"]
            description <- map["description"]
            price <- map["price"]
            loved <- map["loved"]
        }
    }

