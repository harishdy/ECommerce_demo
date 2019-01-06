//
//  Product_RankingStatus.swift
//  ECommerce_demo
//
//  Created by Harish yadav on 1/5/18.
//  Copyright © 2019 Arora Engineers. All rights reserved.
//

import Foundation
import SwiftyJSON
import AlamofireSwiftyJSON

public class Product_RankingStatus {
    public var view_count : String?
    public var shares :String?
    public var order_count :String?
    public var id : Int?
    
    init(item:JSON) {
        self.view_count = item["view_count"].stringValue
        self.shares = item["shares"].stringValue
        self.order_count = item["order_count"].stringValue
        self.id = item["id"].intValue
    }

}
