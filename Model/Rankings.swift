
import Foundation
import SwiftyJSON
import AlamofireSwiftyJSON

public class Rankings {
	public var products = [Product_RankingStatus]()
	public var ranking : String?
    init(item:JSON){
        for temp_product in item["products"].arrayValue{
            let obj_Product_RankingStatus = Product_RankingStatus.init(item: temp_product)
            self.products.append(obj_Product_RankingStatus)
        }
        self.ranking = item["ranking"].stringValue
    }


}
