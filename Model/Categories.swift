
import Foundation
import SwiftyJSON
import AlamofireSwiftyJSON

public class Categories {
	public var products = [Products]()
	public var child_categories = [String]()
	public var id : Int?
	public var name : String?
    public var opened :Bool?

    init(item:JSON){
        for temp_Product in item["products"].arrayValue{
            let obj_Product = Products.init(item: temp_Product)
            self.products.append(obj_Product)
        }
        for temp_child_categorie in item["child_categories"].arrayValue{
            let temp_value = "Having child Product for a age of \(temp_child_categorie)"
            self.child_categories.append(temp_value)
            print(temp_child_categorie)
        }
        self.id = item["id"].intValue
        self.name = item["name"].stringValue
        self.opened = false
    }

}
