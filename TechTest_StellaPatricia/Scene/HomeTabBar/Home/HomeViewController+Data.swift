//
//  HomeViewController+Data.swift
//  TechTest_StellaPatricia
//
//  Created by Stella Patricia on 17/07/21.
//  Copyright © 2021 Stella Patricia. All rights reserved.
//

import Foundation
import UIKit

extension HomeViewController {
    
    func storeData() {
        var item = ItemModel.init(
            imageUrl:"https://images.tokopedia.net/img/cache/500-square/VqbcmM/2020/12/6/b643eac7-a4c9-4107-91e5-cf1deb30507c.jpg?ect=4g",
            title: "Blue Korean Dress",
            price: "$ 80",
            location: "Seoul, South Korea",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "001")
        var items = ["001" : item]
        
        item = ItemModel.init(
            imageUrl:"https://image.winudf.com/v2/image1/a29yZWFuLmZhc2hpb25fc2NyZWVuXzRfMTU1MTcyNjkzN18wNjE/screen-4.jpg?fakeurl=1&type=.jpg",
            title: "Flower Korean Dress",
            price: "$ 76",
            location: "Beijing, China",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "002")
        items["002"] = item
            
        // 3
        item = ItemModel.init(
            imageUrl:"https://cf.shopee.co.id/file/2a60813d922dec4eeae7a112e1932953",
            title: "Korean Dress (Dress Only)",
            price: "$ 103",
            location: "Seoul, South Korea",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "003")
        items["003"] = item
            
        // 4
        item = ItemModel.init(
            imageUrl:"https://res.cloudinary.com/webstore/image/fetch/w_450,c_limit,c_fit,f_auto,e_trim/https%3A%2F%2Fae01.alicdn.com%2Fkf%2FHc1992c1d1416434798e17515a35512a8X%2FJumpsuits-Women-Trendy-Pockets-Ankle-Length-Solid-Loose-Leisure-Womens-Jumpsuit-All-match-Korean-Style-Hip.jpg",
            title: "Korean Jumpsuit",
            price: "$ 87",
            location: "Gangnam, South Korea",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "004")
        items["004"] = item
        
        
        // 5
        item = ItemModel.init(
            imageUrl:"https://www.dhresource.com/0x0/f2/albu/g8/M00/EB/68/rBVaV17FUWiARFTfAAJ5n2LPm5c848.jpg/high-quality-chiffon-jumpsuit-for-women-s.jpg",
            title: "White Jumpsuit",
            price: "$ 90",
            location: "Beijing, China",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "005")
        items["005"] = item
            
            // 6
            item = ItemModel.init(
            imageUrl:"https://cf.shopee.co.id/file/5e0db12fb37b676aa6d737ea0a8e6a8b",
            title: "Korean Japanese Blouse",
            price: "$ 45",
            location: "Seoul, Korea",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "006")
        items["006"] = item
        
        // 7
        item = ItemModel.init(
            imageUrl:"https://conents-jp.multilingualcart.com/ori/50934/goods_img/goods_1398_2.JPG",
            title: "Liz Lisa - Japanese Kawaii Blouse",
            price: "$ 59",
            location: "Tokyo, Japan",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "007")
        items["007"] = item
            
        // 8
        item = ItemModel.init(
            imageUrl:"https://conents-jp.multilingualcart.com/ori/50934/goods_img/goods_1095_3.jpg",
            title: "Liz Lisa - Japanese Kawaii Skirt",
            price: "$ 79",
            location: "Tokyo, Japan",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "008")
        items["008"] = item
            
        // 9
        item = ItemModel.init(
            imageUrl:"https://partycity6.scene7.com/is/image/PartyCity/_pdp_sq_?$_500x500_$&$product=PartyCity/P792981",
            title: "Harry Potter Hogwarts Gryffindor Dress",
            price: "$ 125",
            location: "London, UK",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "009")
        items["009"] = item
        
        // 10
        item = ItemModel.init(
            imageUrl:"https://assets.torrid.com/is/image/torrid/12392207_hi?$td_pdp_zoom_image$",
            title: "Harry Potter Hogwarts Gryffindor Blouse",
            price: "$ 90",
            location: "London, UK",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "010")
        items["010"] = item
            
        // 11
        item = ItemModel.init(
            imageUrl:"https://ecs7.tokopedia.net/img/cache/700/product-1/2014/12/3/254192/254192_866b0ffc-7ab5-11e4-b79e-16822523fab8.jpg",
            title: "Harry Potter T-Shirt",
            price: "$ 59",
            location: "London, UK",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "011")
        items["011"] = item
            
        // 12
        item = ItemModel.init(
            imageUrl:"https://cf.shopee.ph/file/3304511f3e590434c4b904d7c111d914",
            title: "Disney Snow White T-Shirt",
            price: "$ 45",
            location: "New York, USA",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "012")
        items["012"] = item
            
        // 13
        item = ItemModel.init(
            imageUrl:"https://2.bp.blogspot.com/-kgNRYnwkmvQ/Vct3xejplHI/AAAAAAAARmw/fSXxrboFA5I/s1600/132-6044-0_color_0039.jpg",
            title: "Liz Lisa - Japanese Kawaii Jumpsuit",
            price: "$ 98",
            location: "Tokyo, Japan",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "013")
        items["013"] = item
            
        // 14
        item = ItemModel.init(
            imageUrl:"https://images-na.ssl-images-amazon.com/images/I/818gHxK8U%2BL._AC_UL1500_.jpg",
            title: "Disney Beauty And The Beast T-Shirt",
            price: "Sold Out",
            location: "London, UK",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "014")
        items["014"] = item
            
        // 15
        item = ItemModel.init(
            imageUrl:"https://media.karousell.com/media/photos/products/2017/05/22/liz_lisa_lena_dress_1495446055_eb08da25.jpg",
            title: "Liz Lisa - Japanese Kawaii Dress",
            price: "Sold Out",
            location: "Tokyo, Japan",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "015")
        items["015"] = item
            
        // 16
        item = ItemModel.init(
            imageUrl:"https://i.pinimg.com/originals/71/b4/32/71b432b282387954580dee228c0c49f4.jpg",
            title: "Korean Plaid Skirt",
            price: "$ 78",
            location: "Beijing, China",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "016")
        items["016"] = item
            
        // 17
        item = ItemModel.init(
            imageUrl:"https://alitools.io/en/showcase/image?url=https%3A%2F%2Fae01.alicdn.com%2Fkf%2FHb2fc551c9af94a4996ea84c84f327b80w.jpg",
            title: "Korean Flair Skirt",
            price: "$ 56",
            location: "Tokyo, Japan",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "017")
        items["017"] = item
            
        // 18
        item = ItemModel.init(
            imageUrl:"https://ae01.alicdn.com/kf/H266106d691fe4d0ba48f5010e286bc2cj/Solid-White-Long-Sleeve-Shirt-Fashion-Office-Lady-Tops-Korean-Style-Women-Spliced-Chiffon-Blouse-V.jpg_q50.jpg",
            title: "Korean Blouse",
            price: "Sold Out",
            location: "Beijing, China",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "018")
        items["018"] = item
            
        // 19
        item = ItemModel.init(
            imageUrl:"https://res.cloudinary.com/webstore/image/fetch/w_450,c_limit,c_fit,f_auto,e_trim/https%3A%2F%2Fae01.alicdn.com%2Fkf%2FHTB1UbjRNcfpK1RjSZFOq6y6nFXaf%2FWomen-Korean-Style-Bow-Tie-Blouse-Tops-Fashion-Long-Sleeves-Polka-Dots-Blouses-Shirts-Female-Spring.jpg",
            title: "Polkadot Korean Blouse",
            price: "$ 39",
            location: "Beijing, China",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "019")
        items["019"] = item
            
        // 20
        item = ItemModel.init(
            imageUrl:"https://images.fun.com/products/62979/2-1-171113/harry-potter-adult-gryffindor-costume-t-shirt-alt-3.jpg",
            title: "Harry Potter Hogwarts Gryffindor T-Shirt",
            price: "$ 55",
            location: "London, UK",
            description: "Summer New 2021 Solid Cotton White Dress Korean Version Sweet Cute Round Collar Bubble Short Sleeve Shirt Blusa Feminina. Korean Style",
            loved: false,
            id: "020")
        items["020"] = item

        HomeViewController.itemDict = items
    }
}
